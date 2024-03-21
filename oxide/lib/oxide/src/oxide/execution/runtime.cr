require "json"

require "../query"
require "../schema"
require "../introspection_system"
require "../introspection/*"
require "../error"
require "./resolution_info"
require "./context"

module Oxide
  alias ArgumentValues = Hash(String, SerializedOutput)

  module Execution
    class Runtime
      alias IntermediateType = SerializedOutput | Proc(IntermediateType) | Array(IntermediateType) | Hash(String, IntermediateType)

      getter schema : Oxide::Schema

      delegate directives, to: schema

      def initialize(@schema : Oxide::Schema)
      end

      def execute(query : Oxide::Query, context : Oxide::Context? = nil, initial_value = nil)
        execution_context = Execution::Context.new(query, context)

        begin
          definitions = query.document.definitions.select(type: Oxide::Language::Nodes::OperationDefinition)

          operation = get_operation(definitions, query.operation_name)

          coerced_variable_values = coerce_variable_values(schema, operation, query.variables)

          data = case operation.operation_type
          when "query"
            execute_query(execution_context, operation, schema, coerced_variable_values, initial_value)
          when "mutation"
            execute_mutation(execution_context, operation, schema, coerced_variable_values, initial_value)
          end
        rescue e : Error
          execution_context.errors << e
        end

        if execution_context.errors.any?
          { "data" => data, "errors" => serialize_errors(execution_context.errors) }
        else
          { "data" => data }
        end
      end

      private def get_operation(definitions : Array(Language::Nodes::Definition), operation_name : Nil)
        if definitions.one?
          definitions.first
        else
          raise InvalidOperationError.new("operation definition not found")
        end
      end

      private def get_operation(definitions : Array(Language::Nodes::Definition), operation_name : String)
        definition = definitions.find { |definition| definition.name == operation_name }

        if definition
          definition
        else
          raise InvalidOperationError.new("operation definition not found")
        end
      end

      private def execute_query(execution_context : Execution::Context, query, schema, coerced_variable_values, initial_value) : SerializedOutput
        if query_type = schema.query

          begin
            result = execute_selection_set(execution_context, query.selection_set.selections, query_type, initial_value, coerced_variable_values)

            serialize(result)
          rescue e : FieldError
            execution_context.errors << e
            nil
          end
        end
      end

      def serialize(result : IntermediateType) : SerializedOutput
        case result
        when Proc
          serialize(result.call)
        when Hash
          result.transform_values do |value|
            serialize(value).as(SerializedOutput)
          end
        when Array
          result.map do |value|
            serialize(value).as(SerializedOutput)
          end
        else
          result
        end
      end

      def serialize_errors(errors : Set(Error))
        errors.map &.to_h
      end

      private def execute_mutation(execution_context : Execution::Context, mutation, schema, coerced_variable_values, initial_value)
        if mutation_type = schema.mutation
          begin
            result = execute_selection_set(execution_context, mutation.selection_set.selections, mutation_type, initial_value, coerced_variable_values)

            serialize(result)
          rescue e : FieldError
            execution_context.errors << e
            nil
          end
        end
      end

      private def execute_selection_set(execution_context : Execution::Context, selection_set, object_type, object_value, variable_values) : Hash(String, IntermediateType)
        grouped_field_set = collect_fields(execution_context, object_type, selection_set, variable_values, nil)

        partial_results = grouped_field_set.each_with_object({} of String => IntermediateType) do |(key, fields), memo|
          field_name = fields.first.name

          if field = get_field(object_type, field_name)
            field_type = field.type

            memo[key] = execute_field(execution_context, object_type, object_value, field.type, fields, variable_values).as(IntermediateType)
          else
            raise "error getting field #{field_name}"
          end
        end
      end

      private def get_field(object_type, field_name)
        if schema.query == object_type && field_name == "__schema"
          Oxide::Field.new(
            type: Oxide::Introspection::SchemaType,
            resolve: ->(resolution : Oxide::Resolution(Nil)) { resolution.schema }
          )
        elsif field_name == "__typename"
          Oxide::Field.new(
            type: Oxide::Types::StringType.new,
            resolve: ->(resolution : Oxide::Resolution(Type)) { resolution.object.name }
          )
        else
          get_field_from_object_type(object_type, field_name)
        end
      end

      private def get_field_from_object_type(object_type, field_name)
        if field = object_type.fields[field_name]?
          return field
        end

        object_type.interfaces.each do |interface_type|
          if field = interface_type.fields[field_name]?
            return field
          end
        end

        nil
      end

      private def execute_field(execution_context : Execution::Context, object_type, object_value, field_type, fields, variable_values) : IntermediateType
        field = fields.first
        field_name = field.name

        if field_name == "__typename"
          return object_type.name
        end

        schema_field = get_field(object_type, field_name)

        argument_definitions = if schema_field
          schema_field.arguments
        else
          {} of String => Oxide::Argument
        end

        argument_values = coerce_argument_values(argument_definitions, field.arguments, variable_values)

        resolution_info = ResolutionInfo.new(
          schema: schema,
          context: execution_context,
          field: schema_field,
        )

        value = schema_field.try &.resolve(object_value, argument_values, execution_context, resolution_info)

        if value.is_a?(Lazy)
          Proc(IntermediateType).new {
            value.resolve

            execution_context.current_object = object_type
            execution_context.current_field = field

            complete_value(execution_context, field_type, fields, value.value, variable_values).as(IntermediateType)
          }
        else
          execution_context.current_object = object_type
          execution_context.current_field = field

          complete_value(execution_context, field_type, fields, value, variable_values).as(IntermediateType)
        end
      end


      private def complete_value(execution_context : Execution::Context, field_type : Oxide::Types::ObjectType, fields, result, variable_values) : IntermediateType
        return nil if result.nil?

        object_type = field_type

        sub_selection_set = merge_selection_sets(fields)

        begin
          execute_selection_set(execution_context, sub_selection_set, object_type, result, variable_values).as(IntermediateType)
        rescue e : FieldError
          execution_context.errors << e
          nil
        end
      end

      # TODO: Merge into object above?
      private def complete_value(execution_context : Execution::Context, field_type : Oxide::Types::UnionType, fields, result, variable_values)
        return nil if result.nil?

        object_type = resolve_abstract_type(execution_context, field_type, result)

        sub_selection_set = merge_selection_sets(fields)

        execute_selection_set(execution_context, sub_selection_set, object_type, result, variable_values)
      end

      private def complete_value(execution_context : Execution::Context, field_type : Oxide::Types::InterfaceType, fields, result, variable_values)
        return nil if result.nil?

        object_type = resolve_abstract_type(execution_context, field_type, result)

        sub_selection_set = merge_selection_sets(fields)

        execute_selection_set(execution_context, sub_selection_set, object_type, result, variable_values)
      end

      private def complete_value(execution_context : Execution::Context, field_type : Oxide::Types::ScalarType, fields, result, variable_values) : IntermediateType
        return nil if result.nil?

        field_type.serialize(result).as(IntermediateType)
      end


      # If a List type wraps a Non-Null type, and one of the elements of that list resolves to null,
      # then the entire list must resolve to null. If the List type is also wrapped in a Non-Null,
      # the field error continues to propagate upwards.
      private def complete_value(execution_context : Execution::Context, field_type : Oxide::Types::ListType, fields, result, variable_values) : IntermediateType
        return nil if result.nil?

        if result.is_a?(Array)
          inner_type = field_type.of_type

          partial_results = result.map do |result_item|
            if result_item.is_a?(Proc(IntermediateType))
              complete_value(execution_context, inner_type, fields, result_item.call, variable_values).as(IntermediateType)
            else
              complete_value(execution_context, inner_type, fields, result_item, variable_values).as(IntermediateType)
            end
          end

          partial_results.map do |value|
            if value.is_a?(Hash(String, IntermediateType))
              value.transform_values do |inner_value|
                if inner_value.is_a?(Proc(IntermediateType))
                  inner_value.call.as(IntermediateType)
                else
                  inner_value.as(IntermediateType)
                end
              end.as(IntermediateType)
            else
              value.as(IntermediateType)
            end
          end
        else
          raise FieldError.new("result is not a list")
        end
      end

      private def complete_value(execution_context : Execution::Context, field_type : Oxide::Types::EnumType, fields, result, variable_values) : IntermediateType
        return nil if result.nil?

        if enum_value = field_type.values.find(&.value.==(result))
          enum_value.name.as(IntermediateType)
        else
          raise FieldError.new("`#{execution_context.current_object.try(&.name)}.#{execution_context.current_field.try(&.name)}` returned \"#{result}\" at ``, but this isn't a valid value for `#{field_type.name}`. Update the field or resolver to return one of the `#{field_type.name}`'s values instead.")
        end
      end

      private def complete_value(execution_context : Execution::Context, field_type : Oxide::Types::NonNullType, fields, result, variable_values) : IntermediateType
        completed_result = complete_value(execution_context, field_type.of_type, fields, result, variable_values)

        if completed_result.nil?
          field = fields.first

          raise FieldError.new("Cannot return null for non-nullable field #{execution_context.current_object.try(&.name)}.#{execution_context.current_field.try(&.name)}")
        else
          completed_result.as(IntermediateType)
        end
      end

      private def complete_value(execution_context : Execution::Context, field_type : Oxide::Types::LateBoundType, fields, result, variable_values) : IntermediateType
        unwrapped_type = get_type(field_type.typename)

        complete_value(execution_context, unwrapped_type, fields, result, variable_values)
      end

      private def complete_value(execution_context : Execution::Context, field_type, fields, result, variable_values) : IntermediateType
        raise "should not be reached"
      end

      private def get_type(typename)
        case typename
        when "__Schema", "__Type", "__InputValue", "__Directive", "__EnumValue", "__Field"
          IntrospectionSystem.types[typename]
        else
          schema.get_type(typename)
        end
      end

      private def get_type_from_ast(ast)
        schema.get_type_from_ast(ast)
      end

      private def collect_fields(execution_context : Execution::Context, object_type, selection_set, variable_values, visited_fragments)
        grouped_fields = {} of String => Array(Oxide::Language::Nodes::Field)
        visited_fragments ||= [] of String

        selection_set.each do |selection|
          if selection.responds_to?(:directives) && selection.directives.any?
            next if selection.directives.any? do |directive|
              schema_directive = directives.find(&.name.===(directive.name))

              if schema_directive
                directive_arguments = coerce_argument_values(schema_directive.arguments, directive.arguments, variable_values)

                case schema_directive.name
                when "include"
                  !directive_arguments["if"]
                when "skip"
                  !!directive_arguments["if"]
                else
                  false
                end
              else
                false
              end
            end
          end

          case selection
          when Oxide::Language::Nodes::Field
            response_key = selection.alias || selection.name

            grouped_fields[response_key] ||= [] of Oxide::Language::Nodes::Field
            grouped_fields[response_key] << selection
          when Oxide::Language::Nodes::FragmentSpread
            fragment_spread_name = selection.name

            next if visited_fragments.includes?(fragment_spread_name)

            visited_fragments << fragment_spread_name

            fragments = execution_context.document.definitions.select(type: Oxide::Language::Nodes::FragmentDefinition)

            next unless fragment = fragments.find(&.name.===(fragment_spread_name))

            fragment_type = get_type(fragment.type_condition.name)

            next unless does_fragment_type_apply(object_type, fragment_type)

            fragment_selection_set = fragment.selection_set.selections
            fragment_grouped_field_set = collect_fields(execution_context, object_type, fragment_selection_set, variable_values, visited_fragments)
            fragment_grouped_field_set.each do |response_key, fields|
              grouped_fields[response_key] ||= [] of Oxide::Language::Nodes::Field
              grouped_fields[response_key].concat(fields)
            end
          when Oxide::Language::Nodes::InlineFragment
            # TODO: Handle case when type condition is omitted
            fragment_type = schema.get_type(selection.type_condition.not_nil!.name)

            next if !fragment_type.nil? && !does_fragment_type_apply(object_type, fragment_type)

            fragment_selection_set = selection.selection_set.selections
            fragment_grouped_field_set = collect_fields(execution_context, object_type, fragment_selection_set, variable_values, visited_fragments)
            fragment_grouped_field_set.each do |response_key, fields|
              grouped_fields[response_key] ||= [] of Oxide::Language::Nodes::Field
              grouped_fields[response_key].concat(fields)
            end
          end
        end

        grouped_fields
      end

      private def merge_selection_sets(fields)
        selection_set = [] of Oxide::Language::Nodes::Selection

        fields.each do |field|
          next if field.selection_set.nil?

          selection_set.concat field.selection_set.not_nil!.selections
        end

        selection_set
      end

      private def coerce_argument_values(argument_definitions, arguments, variable_values) : ArgumentValues
        coerced_values = {} of String => SerializedOutput

        argument_values = arguments.each_with_object({} of String => Oxide::Language::Nodes::Value?) do |argument, memo|
          memo[argument.name] = argument.value
        end

        argument_definitions.each do |argument|
          argument_name, argument_definition = argument
          argument_type = argument_definition.type

          has_value = argument_values.has_key?(argument_name)

          argument_value = argument_values.fetch(argument_name, nil)

          value = if argument_value.is_a?(Oxide::Language::Nodes::Variable)
            variable = argument_value.as(Oxide::Language::Nodes::Variable)
            variable_name = variable.name

            unless variable_values.nil?
              variable_value = variable_values.not_nil!.fetch(variable_name, nil)

              has_value = !variable_value.nil?

              variable_value
            else
              nil
            end
          else
            argument_value.try &.value
          end

          if !has_value && argument_definition.has_default_value?
            # TODO: Something wrong with this conversion?
            coerced_values[argument_name] = argument_definition.default_value.as(SerializedOutput)
          elsif argument_type.is_a?(Oxide::Types::NonNullType) && (!has_value || value.nil?)
            raise "non nullable argument has null value"
          elsif has_value
            if value.nil?
              coerced_values[argument_name] = nil
            elsif argument_value.is_a?(Oxide::Language::Nodes::Variable)
              coerced_values[argument_name] = if value.is_a?(Hash)
                value.as(Hash(String, CoercedInput)).transform_values { |value| value.as(SerializedOutput) }
              else
                coerced_values[argument_name] = value.as(SerializedOutput)
              end
            else
              coerced_value = argument_type.coerce(value)
              coerced_values[argument_name] = coerced_value.as(SerializedOutput)
            end
          end
        end

        coerced_values
      end

      private def coerce_variable_values(schema, operation, variable_values)
        coerced_variables = {} of String => CoercedInput # TODO: Type may change

        variable_definitions = operation.variable_definitions
        variable_definitions.each do |variable_definition|
          variable_name = variable_definition.variable.name

          variable_type = @schema.get_type_from_ast(variable_definition.type)

          # TODO: Assert IsInputType
          default_value = variable_definition.default_value

          has_value = variable_values.has_key?(variable_name)
          value = variable_values.fetch(variable_name, nil)

          if !has_value && !variable_definition.default_value.nil?
            coerced_variables[variable_name] = variable_definition.default_value.not_nil!.value.as(CoercedInput)
          elsif variable_type.is_a?(Oxide::Language::Nodes::NonNullType) && (!has_value || value.nil?)
            raise "Variable is marked as non null but received a null value"
          elsif has_value
            if value.nil?
              coerced_variables[variable_name] = nil
            else
              # TODO: Support coercion for all types
              coerced_value = if variable_type.responds_to?(:coerce)
                variable_type.coerce(value)
              else
                value
              end

              case coerced_value
              when JSON::Any
                coerced_variables[variable_name] = coerced_value.raw.as(CoercedInput)
              else
                coerced_variables[variable_name] = coerced_value.as(CoercedInput)
              end
            end
          end
        end

        coerced_variables
      end

      private def does_fragment_type_apply(object_type, fragment_type)
        case fragment_type
        when Oxide::Types::ObjectType
          object_type.name == fragment_type.name
        when Oxide::Types::UnionType
          fragment_type.possible_types.includes?(object_type)
        else
          object_type.interfaces.includes?(fragment_type)
        end
      end

      private def resolve_abstract_type(execution_context : Execution::Context, field_type, result)
        # if resolved_type = type_resolvers[field_type.name].resolve_type(result, execution_context)
        if resolved_type = field_type.type_resolver.resolve_type(result, execution_context.context)
          resolved_type
        else
          raise "abstract type could not be resolved"
        end
      end
    end
  end
end