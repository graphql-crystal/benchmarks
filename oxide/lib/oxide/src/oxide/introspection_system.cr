module Oxide
  class IntrospectionSystem
    def self.types
      {
        "__Type" => Oxide::Introspection::TypeType,
        "__Schema" => Oxide::Introspection::SchemaType,
        "__InputValue" => Oxide::Introspection::InputValueType,
        "__Directive" => Oxide::Introspection::DirectiveType,
        "__EnumValue" => Oxide::Introspection::EnumValueType,
        "__Field" => Oxide::Introspection::FieldType
      }
    end
  end
end