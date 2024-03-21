module Oxide
  module Validation
    class VariableUniqueness < Rule
      def enter(node : Oxide::Language::Nodes::OperationDefinition, context)
        variable_names = [] of String

        node.variable_definitions.each do |variable_definition|
          if variable = variable_definition.variable
            if variable_names.includes?(variable.name)
              context.errors << Error.new("There can only be one variable named \"#{variable.name}\"")
            else
              variable_names << variable.name
            end
          end
        end
      end
    end
  end
end