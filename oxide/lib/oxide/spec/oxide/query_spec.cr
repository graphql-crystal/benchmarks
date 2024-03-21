require "../spec_helper"

describe Oxide::Query do
  it "parses from a json payload" do
    input = <<-JSON
    {
      "query": "{ posts }",
      "variables": {
        "id": "12345"
      },
      "operationName": "test"
    }
    JSON

    query = Oxide::Query.from_json(input)

    query.query_string.should eq("{ posts }")
    query.variables.should eq({ "id" => JSON::Any.new("12345") })
    query.operation_name.should eq("test")
  end

  it "parses without variables" do
    input = <<-JSON
    {
      "query": "{ posts }",
      "operationName": "test"
    }
    JSON

    query = Oxide::Query.from_json(input)

    query.query_string.should eq("{ posts }")
    query.variables.should eq({} of String => JSON::Any)
    query.operation_name.should eq("test")
  end

  it "parses without operation name" do
    input = <<-JSON
    {
      "query": "{ posts }",
      "variables": {
        "id": "12345"
      }
    }
    JSON

    query = Oxide::Query.from_json(input)

    query.query_string.should eq("{ posts }")
    query.variables.should eq({ "id" => JSON::Any.new("12345") })
    query.operation_name.should be_nil
  end
end