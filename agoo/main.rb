require 'agoo'
require 'etc'

class Query
  def hello
    'world'
  end
end

class Schema
  attr_reader :query

  def initialize
    @query = Query.new()
  end
end

Agoo::Log.configure(
		    states: {
		      INFO: false,
		      DEBUG: false,
		      connect: false,
		      request: false,
		      response: false,
		      eval: false,
		      push: false,
		    })

Agoo::Server.init(8000, 'root', thread_count: 2, worker_count: Etc.nprocessors, graphql: '/graphql')
Agoo::Server.start()
Agoo::GraphQL.schema(Schema.new) {
  Agoo::GraphQL.load(%^type Query { hello: String! }^)
}
sleep
