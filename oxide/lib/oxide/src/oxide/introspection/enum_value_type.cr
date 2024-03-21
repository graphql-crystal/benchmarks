module Oxide
  module Introspection
    EnumValueType = Oxide::Types::ObjectType.new(
      name: "__EnumValue",
      fields: {
        "name" => Oxide::Field.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::StringType.new
          ),
          resolve: ->(resolution : Oxide::Resolution(Types::EnumValue)) { resolution.object.name }
        ),
        "description" => Oxide::Field.new(
          type: Oxide::Types::StringType.new,
          resolve: ->(resolution : Oxide::Resolution(Types::EnumValue)) { resolution.object.description }
        ),
        "isDeprecated" => Oxide::Field.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::BooleanType.new
          ),
          resolve: ->(resolution : Oxide::Resolution(Types::EnumValue)) { resolution.object.deprecated? }
        ),
        "deprecationReason" => Oxide::Field.new(
          type: Oxide::Types::StringType.new,
          resolve: ->(resolution : Oxide::Resolution(Types::EnumValue)) { resolution.object.deprecation_reason }
        )
      }
    )
  end
end