require "kemal"
require "graphql"

@[GraphQL::Object]
class Query < GraphQL::BaseQuery
  @[GraphQL::Field]
  def hello : String
    "world"
  end
end

schema = GraphQL::Schema.new(Query.new)

# Use a before_all block to set the Date header
before_all do |env|
  env.response.headers["Date"] = Time.utc.to_rfc2822
end

post "/graphql" do |env|
  env.response.content_type = "application/json"

  query = env.params.json["query"].as(String)
  variables = env.params.json["variables"]?.as(Hash(String, JSON::Any)?)
  operation_name = env.params.json["operationName"]?.as(String?)

  schema.execute(query, variables, operation_name)
end

logging false
Kemal.config.port = 8000

Kemal.run
