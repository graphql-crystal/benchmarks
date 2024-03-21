# For each Input Object Field inputField in the document:
# Let inputFieldName be the Name of inputField.
# Let inputFieldDefinition be the input field definition provided by the parent input object type named inputFieldName.
# inputFieldDefinition must exist.


module Oxide
  module Validation
    class InputObjectFieldNames < Rule
      def enter(node : Oxide::Language::Nodes::ObjectField, context)
        input_field_name = node.name

        case input_type = context.input_type
        when Oxide::Types::InputObjectType
          input_field_definition = input_type.input_fields[input_field_name]?

          if input_field_definition.nil?
            context.errors << Error.new("InputObject '#{input_type.name}' doesn't accept argument '#{input_field_name}'")
          end
        end
      end
    end
  end
end