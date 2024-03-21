# For each operation in a document:
#   For each variableUsage in scope, variable must be in operation‘s variable list.
#   Let fragments be every fragment referenced by that operation transitively.
#   For each fragment in fragments:
#     For each variableUsage in scope of fragment, variable must be in operation‘s variable list.
module Oxide
  module Validation
    class AllVariableUsesDefined < Rule
      def initialize
        @scope = nil
        @operations = [] of Oxide::Language::Nodes::OperationDefinition

        # Store the variables used by an operation
        # @operation_variables_used = {} of Oxide::Language::Nodes::OperationDefinition => Array(String)
        @operation_variables_used = Hash(Oxide::Language::Nodes::OperationDefinition, Array(String)).new do |hash, key|
          hash[key] = [] of String
        end

        # Store the variables used by a fragment
        @fragment_variables_used = Hash(String, Array(String)).new do |hash, key|
          hash[key] = [] of String
        end

        # Store fragments referenced by operation
        @operation_fragments_referenced = Hash(Oxide::Language::Nodes::OperationDefinition, Array(String)).new do |hash, key|
          hash[key] = [] of String
        end

        @fragment_fragments_referenced = Hash(String, Array(String)).new do |hash, key|
          hash[key] = [] of String
        end
      end

      def enter(node : Oxide::Language::Nodes::OperationDefinition, context)
        @scope = node
        @operations << node
      end

      def leave(node : Oxide::Language::Nodes::OperationDefinition, context)
        @scope = nil
      end

      def enter(node : Oxide::Language::Nodes::FragmentDefinition, context)
        @scope = node
      end

      def leave(node : Oxide::Language::Nodes::FragmentDefinition, context)
        @scope = nil
      end

      def enter(node : Oxide::Language::Nodes::Argument, context)
        value = node.value

        scope = @scope
        case value
        when Oxide::Language::Nodes::Variable
          case scope
          when Oxide::Language::Nodes::OperationDefinition
            @operation_variables_used[scope] << value.name
          when Oxide::Language::Nodes::FragmentDefinition
            @fragment_variables_used[scope.name] << value.name
          end
        end
      end

      def enter(node : Oxide::Language::Nodes::FragmentSpread, context)
        scope = @scope
        case scope
        when Oxide::Language::Nodes::OperationDefinition
          @operation_fragments_referenced[scope] << node.name
        when Oxide::Language::Nodes::FragmentDefinition
          @fragment_fragments_referenced[scope.name] << node.name
        end
      end

      def leave(node : Oxide::Language::Nodes::Document, context)
        @operations.each do |operation|
          variables_used = @operation_variables_used[operation]
          variables_defined = operation.variable_definitions.map { |variable_definition| variable_definition.variable.try &.name  }

          variables_used.each do |variable|
            unless variables_defined.includes?(variable)
              context.errors << Error.new("Variable $#{variable} is used by #{operation.name} but not declared")
            end
          end

          fragments_referenced = find_all_referenced_fragments(operation)
          fragments_referenced.each do |fragment|
            fragment_variables_used = @fragment_variables_used[fragment]
            fragment_variables_used.each do |variable|
              unless variables_defined.includes?(variable)
                context.errors << Error.new("Variable $#{variable} is used by #{fragment} but not declared")
              end
            end
          end
        end

        reset
      end

      private def reset
        @scope = nil
        @operations.clear
        @operation_variables_used.clear
        @operation_fragments_referenced.clear
        @fragment_fragments_referenced.clear
        @fragment_variables_used.clear
      end

      private def find_all_referenced_fragments(operation)
        fragments_referenced = [] of String

        # Find all directly referenced fragments
        @operation_fragments_referenced[operation].each do |fragment|
          fragments_referenced << fragment

          # For each fragment, find any fragments they reference
          # TODO: Make this recusive to find all fragments of fragments etc
          @fragment_fragments_referenced[fragment].each do |subfragment|
            fragments_referenced << subfragment
          end
        end

        fragments_referenced
      end
    end
  end
end