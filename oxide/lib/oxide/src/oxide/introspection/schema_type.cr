require "./type_type"
require "./directive_type"

module Oxide
  module Introspection
    SchemaType = Oxide::Types::ObjectType.new(
      name: "__Schema",
      fields: {
        "description" => Oxide::Field.new(
          type: Oxide::Types::StringType.new,
          resolve: ->(resolution : Oxide::Resolution(Oxide::Schema)) { nil } # TODO: Support descriptions
        ),
        "types" => Oxide::Field.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::ListType.new(
              of_type: Oxide::Types::NonNullType.new(
                of_type: Oxide::Types::LateBoundType.new("__Type")
              )
            )
          ),
          resolve: ->(resolution : Oxide::Resolution(Oxide::Schema)) { resolution.object.types }
        ),
        "queryType" => Oxide::Field.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::LateBoundType.new("__Type")
          ),
          resolve: ->(resolution : Oxide::Resolution(Oxide::Schema)) { resolution.object.query }
        ),
        "mutationType" => Oxide::Field.new(
          type: Oxide::Types::LateBoundType.new("__Type"),
          resolve: ->(resolution : Oxide::Resolution(Oxide::Schema)) { resolution.object.mutation }
        ),
        "subscriptionType" => Oxide::Field.new(
          type: Oxide::Types::LateBoundType.new("__Type"),
          resolve: ->(resolution : Oxide::Resolution(Oxide::Schema)) { nil }
        ),
        "directives" => Oxide::Field.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::ListType.new(
              of_type: Oxide::Types::NonNullType.new(
                of_type: Oxide::Types::LateBoundType.new("__Directive")
              )
            )
          ),
          resolve: ->(resolution : Oxide::Resolution(Oxide::Schema)) { resolution.object.directives }
        )
      }
    )
  end
end
