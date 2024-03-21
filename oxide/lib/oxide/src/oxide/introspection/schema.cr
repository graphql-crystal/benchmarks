require "./query_type"

module Oxide
  module Introspection
    Schema = ::Oxide::Schema.new(
      query: Introspection::QueryType,
      mutation: nil
    )
  end
end