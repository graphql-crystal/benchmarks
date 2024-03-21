require "kemal"
require "./schema"

post "/graphql" do |env|
  env.response.content_type = "application/json"

  variables = extract_variables(env.params)

  query = Oxide::Query.new(
    env.params.json["query"].as(String),
    variables: variables
  )

  runtime = Oxide::Execution::Runtime.new(
    DummySchema,
    query,
    initial_value: Query.new
  )

  runtime.execute.to_json
end

get "/graphiql" do
  render "spec/dummy/index.html"
end

def extract_variables(params)
  variables = params.json["variables"]?

  case variables
  when Hash
    variables
  else
    {} of String => JSON::Any
  end
end

Kemal.run