require "kemal"
require "oxide"

Schema = Oxide::Schema.new(
  query: Oxide::Types::ObjectType.new(
    name: "Query",
    fields: {
      "hello" => Oxide::Field.new(
        type: Oxide::Types::NonNullType.new(
          of_type: Oxide::Types::StringType.new
        ),
        resolve: ->(resolution : Oxide::Resolution(Nil)) { "world" }
      )
    }
  )
)

Runtime = Oxide::Execution::Runtime.new(Schema)

post "/graphql" do |env|
  env.response.content_type = "application/json"

  query = Oxide::Query.from_json(env.request.body.not_nil!.gets_to_end)

  pipeline = Oxide::Validation::Pipeline.new(
    Schema,
    query
  )

  pipeline.execute

  unless pipeline.errors.empty?
    Runtime.execute(query)
  else
    pipeline.errors
  end
end

logging false
Kemal.config.port = 8000

Kemal.run
