require "graphql"
require "roda"

class QueryType < GraphQL::Schema::Object
  field :hello, String, null: false

  def hello
    "world"
  end
end


class Schema < GraphQL::Schema
  query QueryType
end


class App < Roda
  plugin :json_parser
  plugin :json

  route do |r|
    r.on 'graphql' do
      r.post do
        result = Schema.execute(
          r.params["query"],
          variables: r.params["variables"],
        ).to_json
      end
    end
  end
end

run App
