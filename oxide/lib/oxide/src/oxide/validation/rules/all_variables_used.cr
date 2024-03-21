module Oxide
  module Validation
    class AllVariablesUsed < Rule
      property fragment_definitions : Hash(String, Oxide::Language::Nodes::FragmentDefinition) = {} of String => Oxide::Language::Nodes::FragmentDefinition

      def enter(node : Oxide::Language::Nodes::Document, context)
        node.definitions.each do |definition|
          case definition
          when Oxide::Language::Nodes::FragmentDefinition
            fragment_definitions[definition.name] = definition
          end
        end
      end

      def enter(node : Oxide::Language::Nodes::OperationDefinition, context)
        variable_definitions = node.variable_definitions

        # Each variable in variables must be used at least once in either the operation scope itself or any fragment transitively referenced by that operation.
        variable_definitions.each do |variable_definition|
          unless variable_is_used?(variable_definition.variable, node)
            context.errors << Error.new("Variable $#{variable_definition.variable.name} is declared by #{node.name} but not used")
          end
        end
      end

      private def variable_is_used?(variable, operation : Oxide::Language::Nodes::OperationDefinition)
        variable_used_in_selection_set?(variable, operation.selection_set)
      end

      private def variable_used_in_selection?(variable, selection : Oxide::Language::Nodes::Field)
        selection.arguments.each do |argument|
          value = argument.value
          case value
          when Oxide::Language::Nodes::Variable
            if value.name == variable.name
              return true
            end
          end
        end

        sub_selection = selection.selection_set

        if sub_selection
          variable_used_in_selection_set?(variable, sub_selection)
        else
          false
        end
      end

      private def variable_used_in_selection?(variable, selection : Oxide::Language::Nodes::InlineFragment)
        variable_used_in_selection_set?(variable, selection.selection_set)
      end

      private def variable_used_in_selection?(variable, selection : Oxide::Language::Nodes::FragmentSpread)
        fragment_definition = fragment_definitions[selection.name]?

        if fragment_definition
          variable_used_in_selection_set?(variable, fragment_definition.selection_set)
        else
          false
        end
      end

      private def variable_used_in_selection?(variable, selection)
        false
      end

      private def variable_used_in_selection_set?(variable, selection_set : Oxide::Language::Nodes::SelectionSet)
        selection_set.selections.each do |selection|
          if variable_used_in_selection?(variable, selection)
            return true
          end
        end

        false
      end
    end
  end
end
