require "./schema_type"

module Oxide
  module Introspection
    QueryType = Oxide::Types::ObjectType.new(
      name: "__IntrospectionQuery",
      fields: {
        "__schema" => Oxide::Field.new(
          type: Oxide::Types::LateBoundType.new("__Schema"),
          resolve: ->(resolution : Oxide::Resolution(Query)) {
            resolution.schema
          }
        )
      }
    )
  end
end