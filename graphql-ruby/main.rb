require 'sinatra/base'
require 'sinatra/json'
require 'graphql'
require 'rack/contrib'
require 'logger'

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
  use Rack::JSONBodyParser

  set :port, 8000
  # TODO this doesn't work, how to disable logging?
  set :logging, Logger::WARN

  post '/graphql' do
    result = Schema.execute(
      params[:query],
      variables: params[:variables],
    )
    json result
  end

  run! if app_file == $0
end
