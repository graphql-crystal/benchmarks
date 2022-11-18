require "kemal"

post "/graphql" do |env|
  env.response.content_type = "application/json"
  %({"data":{"hello":"world"}})
end

logging false
Kemal.config.port = 8000

Kemal.run
