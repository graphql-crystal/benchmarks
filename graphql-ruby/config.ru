require 'rack'
require 'graphql'

class QueryType < GraphQL::Schema::Object
  field :hello, String

  def hello
    'world'
  end
end

class AppSchema < GraphQL::Schema
  query QueryType
end

class RackApp
  def call(env)
    request = Rack::Request.new(env)

    if request.request_method == 'POST' && request.path == '/graphql'
      body           = JSON.parse(request.body.read)
      query          = body['query']

      result = AppSchema.execute(query,
                                 variables: {},
                                 context: {})

      [200, { 'Content-Type' => 'application/json' }, [result.to_json]]
    end
  end
end

run RackApp.new
