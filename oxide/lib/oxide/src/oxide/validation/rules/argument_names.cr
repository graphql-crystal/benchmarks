# For each argument in the document
# Let argumentName be the Name of argument.
# Let argumentDefinition be the argument definition provided by the parent field or definition named argumentName.
# argumentDefinition must exist.
module Oxide
  module Validation
    class ArgumentNames < Rule
      def enter(node : Oxide::Language::Nodes::Argument, context)
        definition = context.argument
        field_definition = context.field_definition
        parent_type = context.parent_type

        unless definition
          if directive = context.directive
            context.errors << Error.new("Directive '#{directive.name}' doesn't accept argument '#{node.name}'")
          elsif field_definition && parent_type
            field_name, field = field_definition

            type_name = if parent_type.responds_to?(:name)
              parent_type.name
            end

            context.errors << Error.new("Field '#{field_name}' doesn't accept argument '#{node.name}'", [node.to_location])
          end
        end
      end
    end
  end
end