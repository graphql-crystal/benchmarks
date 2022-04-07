require "kemal"
require "graphql"

@[GraphQL::Object]
class Query
  include GraphQL::ObjectType
  include GraphQL::QueryType

  @[GraphQL::Field]
  def hello : String
    "world"
  end
end

schema = GraphQL::Schema.new(Query.new)

post "/graphql" do |env|
  env.response.content_type = "application/json"

  query = env.params.json["query"].as(String)
  variables = env.params.json["variables"]?.as(Hash(String, JSON::Any)?)
  operation_name = env.params.json["operationName"]?.as(String?)

  schema.execute(query, variables, operation_name)
end

logging false
gzip false
Kemal.config.powered_by_header = false
Kemal.config.port = 8000

Signal::TERM.trap do
  Kemal.stop
  exit
end

Kemal.run
