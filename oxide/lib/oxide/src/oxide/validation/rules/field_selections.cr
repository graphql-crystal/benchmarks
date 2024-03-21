module Oxide
  module Validation
    class FieldSelections < Rule
      def enter(node : Oxide::Language::Nodes::Field, context)
        field_name = node.name

        case type = context.parent_type
        when Types::ObjectType, Types::InterfaceType
          unless type.fields.has_key?(field_name)
            context.errors << Error.new("Field '#{field_name}' doesn't exist on type '#{type.name}'")
          end
        when Types::UnionType
          unless field_name == "__typename"
            context.errors << Error.new("Selections can't be made directly on unions (see selections on #{type.name})")
          end
        end
      end
    end
  end
end