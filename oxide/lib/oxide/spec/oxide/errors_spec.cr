require "../spec_helper"

describe Oxide do
  # it "returns error for requesting field that does not exist" do
  #   query_string = <<-QUERY
  #     query {
  #       charge(id: 1) {
  #         id
  #         status
  #         lol
  #       }
  #     }
  #   QUERY

  #   runtime = Oxide::Execution::Runtime.new(
  #     DummySchema,
  #     Oxide::Query.new(query_string)
  #   )

  #   result = JSON.parse(runtime.execute)

  #   response = {
  #     "errors" => [
  #       {
  #         "message" => "Field 'lol' doesn't exist on type 'Charge'"
  #       }
  #     ]
  #   }

  #   result.should eq(response)
  # end

  # it "returns multiple errors for missing fields on array" do
  #   query_string = <<-QUERY
  #     query {
  #       charges {
  #         id
  #         foo
  #         bar
  #       }
  #     }
  #   QUERY

  #   runtime = Oxide::Execution::Runtime.new(
  #     DummySchema,
  #     Oxide::Query.new(query_string)
  #   )

  #   result = JSON.parse(runtime.execute)

  #   response = {
  #     "errors" => [
  #       {
  #         "message" => "Field 'foo' doesn't exist on type 'Charge'"
  #       },
  #       {
  #         "message" => "Field 'bar' doesn't exist on type 'Charge'"
  #       }
  #     ]
  #   }

  #   result.should eq(response)
  # end

  # it "returns error when non-null field gets nil" do
  #   query_string = <<-QUERY
  #     query {
  #       charges {
  #         id
  #         status
  #       }
  #     }
  #   QUERY

  #   runtime = Oxide::Execution::Runtime.new(
  #     DummySchema,
  #     Oxide::Query.new(query_string)
  #   )

  #   result = JSON.parse(runtime.execute)

  #   response = {
  #     "data" => nil,
  #     "errors" => [
  #       {
  #         "message" => "Cannot return null for non-nullable field Charge.status"
  #       }
  #     ]
  #   }

  #   result.should eq(response)
  # end

  # it "returns error when list of non-null types returns null" do
  #   query_string = <<-QUERY
  #     query {
  #       nullList {
  #         id
  #       }
  #     }
  #   QUERY

  #   runtime = Oxide::Execution::Runtime.new(
  #     DummySchema,
  #     Oxide::Query.new(query_string)
  #   )

  #   result = JSON.parse(runtime.execute)

  #   response = {
  #     "data" => { "nullList" => nil },
  #     "errors" => [
  #       {
  #         "message" => "Cannot return null for non-nullable field Query.nullList"
  #       }
  #     ]
  #   }

  #   result.should eq(response)
  # end
end