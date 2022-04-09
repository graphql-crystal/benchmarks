require 'sinatra'
require 'sinatra/json'
require 'graphql'
require 'rack/contrib'

class QueryType < GraphQL::Schema::Object

  field :hello, String, null: false

  def hello
    "world"
  end
end


class Schema < GraphQL::Schema
  query QueryType
end


class App < Sinatra::Base
  use Rack::PostBodyContentTypeParser
  post '/graphql' do
    result = Schema.execute(
      params[:query],
      variables: params[:variables],
    )
    json result
  end
end