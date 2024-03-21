require "../../spec_helper"

describe Oxide::Execution::Runtime do
  it "handles fragments on Interface" do
    query_string = <<-QUERY
      query {
        transactions {
          ...TransactionInfo
        }
      }

      fragment TransactionInfo on Transaction {
        id
        reference
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(
      query: Oxide::Query.new(query_string),
      initial_value: Query.new
    )

    expected_transactions = [
      { "id" => "1", "reference" => "ch_1234" },
      { "id" => "32", "reference" => "r_5678" },
    ]

    result["errors"]?.should be_nil
    result["data"].should eq({ "transactions" => expected_transactions })
  end
end