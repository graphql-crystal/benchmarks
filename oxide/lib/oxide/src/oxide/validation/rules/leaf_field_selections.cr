module Oxide
  module Validation
    class LeafFieldSelections < Rule
      def enter(node : Oxide::Language::Nodes::Field, context)
        if field_definition = context.field_definition
          selection_type = field_definition[1].type

          case selection_type
          when Types::ScalarType, Types::EnumType
            selection_set = node.selection_set

            unless selection_set.nil? || selection_set.selections.empty?
              selection_names = selection_set.selections.select(Oxide::Language::Nodes::Field).map(&.name)
              context.errors << Error.new("Selections can't be made on scalars (field '#{node.name}' returns #{selection_type.name} but has selections [#{selection_names.join(",")}])")
            end
          when Types::ObjectType, Types::InterfaceType, Types::UnionType
            selection_set = node.selection_set

            if selection_set.nil? || selection_set.selections.empty?
              context.errors << Error.new("Field must have selections (field '#{node.name}' returns #{selection_type.name} but has no selections. Did you mean '#{node.name} { ... }'?)")
            end
          end
        end
      end
    end
  end
end