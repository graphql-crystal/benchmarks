require "kemal"

post "/graphql" do |env|
  env.response.content_type = "application/json"
  %({"data":{"hello":"world"}})
end

logging false
Kemal.config.port = 8000

Signal::TERM.trap do
  Kemal.stop
  exit
end

Kemal.run
