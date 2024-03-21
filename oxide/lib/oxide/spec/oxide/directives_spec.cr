require "../spec_helper"

describe Oxide do
  it "does not have field if skip is true" do
    query_string = <<-QUERY
      query($toSkip: Boolean) {
        transactions {
          id
          reference @skip(if: $toSkip)
        }
      }
    QUERY

    variables = JSON.parse <<-STRING
      {
        "toSkip": true
      }
    STRING

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(
      query: Oxide::Query.new(query_string, variables: variables.as_h),
      initial_value: Query.new
    )["data"]

    result.should eq({
      "transactions" => [
        { "id" => "1" },
        { "id" => "32" }
      ]
    })
  end

  it "has field if skip is false" do
    query_string = <<-QUERY
      query($toSkip: Boolean) {
        transactions {
          id
          reference @skip(if: $toSkip)
        }
      }
    QUERY

    variables = JSON.parse <<-STRING
      {
        "toSkip": false
      }
    STRING

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(
      query: Oxide::Query.new(query_string, variables: variables.as_h),
      initial_value: Query.new
    )["data"]

    result.should eq({
      "transactions" => [
        { "id" => "1", "reference" => "ch_1234" },
        { "id" => "32", "reference" => "r_5678" }
      ]
    })
  end

  it "does not have field if include is false" do
    query_string = <<-QUERY
      query($toInclude: Boolean) {
        transactions {
          id
          reference @include(if: $toInclude)
        }
      }
    QUERY

    variables = JSON.parse <<-STRING
      {
        "toInclude": false
      }
    STRING

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(
      query: Oxide::Query.new(query_string, variables: variables.as_h),
      initial_value: Query.new
    )["data"]

    result.should eq({
      "transactions" => [
        { "id" => "1" },
        { "id" => "32" }
      ]
    })
  end

  it "has field if include is true" do
    query_string = <<-QUERY
      query($toInclude: Boolean) {
        transactions {
          id
          reference @include(if: $toInclude)
        }
      }
    QUERY

    variables = JSON.parse <<-STRING
      {
        "toInclude": true
      }
    STRING

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(
      query: Oxide::Query.new(query_string, variables: variables.as_h),
      initial_value: Query.new
    )["data"]

    result.should eq({
      "transactions" => [
        { "id" => "1", "reference" => "ch_1234" },
        { "id" => "32", "reference" => "r_5678" }
      ]
    })
  end
end