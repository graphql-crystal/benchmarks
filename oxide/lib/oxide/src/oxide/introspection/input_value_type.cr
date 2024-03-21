require "./type_type"

module Oxide
  module Introspection
    InputValueType = Oxide::Types::ObjectType.new(
      name: "__InputValue",
      fields: {
        "name" => Oxide::Field.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::StringType.new
          ),
          resolve: ->(resolution : Oxide::Resolution(ArgumentInfo)) { resolution.object.name }
        ),
        "description" => Oxide::Field.new(
          type: Oxide::Types::StringType.new,
          resolve: ->(resolution : Oxide::Resolution(ArgumentInfo)) { resolution.object.description }
        ),
        "type" => Oxide::Field.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::LateBoundType.new("__Type")
          ),
          resolve: ->(resolution : Oxide::Resolution(ArgumentInfo)) { resolution.object.type }
        ),
        "defaultValue" => Oxide::Field.new(
          type: Oxide::Types::StringType.new,
          resolve: ->(resolution : Oxide::Resolution(ArgumentInfo)) {
            # TODO: Support printing all types
            if default_value = resolution.object.default_value
              case default_value
              when String
                "\"#{default_value}\""
              else
                default_value
              end
            end
          }
        ),
        "isDeprecated" => Oxide::Field.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::BooleanType.new
          ),
          resolve: ->(resolution : Oxide::Resolution(ArgumentInfo)) { resolution.object.deprecated? }
        ),
        "deprecationReason" => Oxide::Field.new(
          type: Oxide::Types::StringType.new,
          resolve: ->(resolution : Oxide::Resolution(ArgumentInfo)) { resolution.object.deprecation_reason }
        )
      }
    )
  end
end