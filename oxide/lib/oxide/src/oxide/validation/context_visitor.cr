module Oxide
  module Validation
    class ContextVisitor < Oxide::Language::Visitor
      property context : Validation::Context

      def initialize(@context : Validation::Context)
      end

      def enter(node : Oxide::Language::Nodes::SelectionSet)
        unknown = named_type(context.type)

        case unknown
        when Types::ObjectType, Types::InterfaceType, Types::UnionType
          context.parent_type_stack << unknown
        else
          context.parent_type_stack << nil
        end
      end

      def enter(node : Oxide::Language::Nodes::Field)
        definition = nil
        type = nil

        if parent_type = context.parent_type
          definition = field_definition(parent_type, node.name)

          type = definition.try &.type
        end

        context.field_definition_stack << (definition ? {node.name, definition} : nil)
        context.type_stack << (output_type?(type) ? type : nil)
      end

      # case Kind.FIELD: {
      #   const parentType = this.getParentType();
      #   let fieldDef;
      #   let fieldType: unknown;
      #   if (parentType) {
      #     fieldDef = this._getFieldDef(schema, parentType, node);
      #     if (fieldDef) {
      #       fieldType = fieldDef.type;
      #     }
      #   }
      #   this._fieldDefStack.push(fieldDef);
      #   this._typeStack.push(isOutputType(fieldType) ? fieldType : undefined);
      #   break;
      # }


      # case Kind.DIRECTIVE:
      #   this._directive = schema.getDirective(node.name.value);
      #   break;

      def enter(node : Oxide::Language::Nodes::Directive)
        context.directive = context.schema.directives.find { |directive| directive.name == node.name }
      end

      # case Kind.OPERATION_DEFINITION: {
      #   const rootType = schema.getRootType(node.operation);
      #   this._typeStack.push(isObjectType(rootType) ? rootType : undefined);
      #   break;
      # }

      def enter(node : Oxide::Language::Nodes::OperationDefinition)
        root_type = case node.operation_type
        when "query"
          context.schema.query
        when "mutation"
          context.schema.mutation
        else
          nil
        end

        context.type_stack << (output_type?(root_type) ? root_type : nil)
      end

      def enter(node : Oxide::Language::Nodes::InlineFragment)
        unknown = if type_condition = node.type_condition
          begin
            context.schema.get_type_from_ast(type_condition)
          rescue KeyError
          end
        else
          named_type(context.type)
        end

        context.type_stack << (output_type?(unknown) ? unknown : nil)
      end

      def enter(node : Oxide::Language::Nodes::FragmentDefinition)
        unknown = if type_condition = node.type_condition
          begin
            context.schema.get_type_from_ast(type_condition)
          rescue KeyError
          end
        else
          named_type(context.type)
        end

        context.type_stack << (output_type?(unknown) ? unknown : nil)
      end

      # case Kind.INLINE_FRAGMENT:
      # case Kind.FRAGMENT_DEFINITION: {
      #   const typeConditionAST = node.typeCondition;
      #   const outputType: unknown = typeConditionAST
      #     ? typeFromAST(schema, typeConditionAST)
      #     : getNamedType(this.getType());
      #   this._typeStack.push(isOutputType(outputType) ? outputType : undefined);
      #   break;
      # }

      def enter(node : Oxide::Language::Nodes::VariableDefinition)
        unknown = context.schema.get_type_from_ast(node.type)

        context.input_type_stack << (unknown && unknown.input_type? ? unknown : nil)
      end

      # case Kind.ARGUMENT: {
      #   let argDef;
      #   let argType: unknown;
      #   const fieldOrDirective = this.getDirective() ?? this.getFieldDef();
      #   if (fieldOrDirective) {
      #     argDef = fieldOrDirective.args.find(
      #       (arg) => arg.name === node.name.value,
      #     );
      #     if (argDef) {
      #       argType = argDef.type;
      #     }
      #   }
      #   this._argument = argDef;
      #   this._defaultValueStack.push(argDef ? argDef.defaultValue : undefined);
      #   this._inputTypeStack.push(isInputType(argType) ? argType : undefined);
      #   break;
      # }

      def enter(node : Oxide::Language::Nodes::Argument)
        definition = nil

        if directive = context.directive
          definition = directive.arguments[node.name]?
        elsif field_tuple = context.field_definition
          name, field = field_tuple
          definition = field.arguments[node.name]?
        end

        type = definition.try &.type

        context.argument = definition
        # context.default_value_stack <<
        context.input_type_stack << (type.try &.input_type? ? type : nil)
      end

      # case Kind.LIST: {
      #   const listType: unknown = getNullableType(this.getInputType());
      #   const itemType: unknown = isListType(listType)
      #     ? listType.ofType
      #     : listType;
      #   // List positions never have a default value.
      #   this._defaultValueStack.push(undefined);
      #   this._inputTypeStack.push(isInputType(itemType) ? itemType : undefined);
      #   break;
      # }

      def enter(node : Oxide::Language::Nodes::ListType)
      end

      # case Kind.OBJECT_FIELD: {
      #   const objectType: unknown = getNamedType(this.getInputType());
      #   let inputFieldType: GraphQLInputType | undefined;
      #   let inputField: GraphQLInputField | undefined;
      #   if (isInputObjectType(objectType)) {
      #     inputField = objectType.getFields()[node.name.value];
      #     if (inputField) {
      #       inputFieldType = inputField.type;
      #     }
      #   }
      #   this._defaultValueStack.push(
      #     inputField ? inputField.defaultValue : undefined,
      #   );
      #   this._inputTypeStack.push(
      #     isInputType(inputFieldType) ? inputFieldType : undefined,
      #   );
      #   break;
      # }

      # def enter(node : Oxide::Language::Nodes::ObjectField)
      #   object_type = named_type(context.input_type)


      #   case object_type
      #   when Oxide::Types::InputObjectType
      #     input_field = object_type.input_fields[node.name]?
      #     input_field_type = input_field.try &.type

      #     context.input_type_stack << (input_field_type.try &.input_type? ? input_field_type : nil)
      #   end
      # end

      # case Kind.ENUM: {
      #   const enumType: unknown = getNamedType(this.getInputType());
      #   let enumValue;
      #   if (isEnumType(enumType)) {
      #     enumValue = enumType.getValue(node.value);
      #   }
      #   this._enumValue = enumValue;
      #   break;
      # }

      def enter(node : Oxide::Language::Nodes::EnumTypeDefinition)
      end

      def enter(node)
      end

      def leave(node : Oxide::Language::Nodes::SelectionSet)
        context.parent_type_stack.pop
      end

      def leave(node : Oxide::Language::Nodes::Field)
        context.field_definition_stack.pop
        context.type_stack.pop
      end

      def leave(node : Oxide::Language::Nodes::OperationDefinition)
        context.type_stack.pop
      end

      def leave(node : Oxide::Language::Nodes::Argument)
        context.argument = nil
        context.input_type_stack.pop
      end

      def leave(node : Oxide::Language::Nodes::VariableDefinition)
        context.input_type_stack.pop
      end

      def leave(node : Oxide::Language::Nodes::Directive)
        context.directive = nil
      end


      # default:
      # // Ignore other nodes

      private def field_definition(parent_type : Oxide::Types::ObjectType, field_name)
        if field_name == "__schema" && parent_type == context.schema.query
          # Return a fake field definition?
        end

        if field_name == "__type" && parent_type == context.schema.query
          # Return a fake field definition?
        end

        if field_name == "__typename"
          # Return a fake field definition?
        end

        parent_type.fields[field_name]?
      end

      private def field_definition(parent_type, field_name)
        nil
      end

      private def output_type?(type)
        case type
        when Types::ScalarType, Types::ObjectType, Types::InterfaceType, Types::UnionType, Types::EnumType
          true
        when Types::ListType, Types::NonNullType
          output_type?(type.of_type)
        else
          false
        end
      end

      private def named_type(type)
        case type
        when Oxide::Types::ListType
          named_type(type.of_type)
        when Oxide::Types::NonNullType
          named_type(type.of_type)
        else
          type
        end
      end
    end
  end
end

# const namedType: unknown = getNamedType(this.getType());
#         this._parentTypeStack.push(
#           isCompositeType(namedType) ? namedType : undefined,
#         );
#         break;