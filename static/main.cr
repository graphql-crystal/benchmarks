require "http/server"
require "json"

server = HTTP::Server.new do |context|
  context.response.headers["Content-Type"] = "application/json"
  context.response.print({"data" => {"hello" => "world"}}.to_json)
end

server.bind_tcp 8000
server.listen
