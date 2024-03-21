require "../spec_helper"

describe Oxide do
  it "executes" do
    query_string = <<-QUERY
      query {
        charges {
          id
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string), initial_value: Query.new)["data"]

    result.should eq({ "charges" => [{ "id" => "1" }, { "id" => "2" }, { "id" => "3" }] })
  end

  it "supports query shorthand" do
    query_string = <<-QUERY
      {
        charges {
          id
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string), initial_value: Query.new)["data"]

    result.should eq({ "charges" => [{ "id" => "1" }, { "id" => "2" }, { "id" => "3" }] })
  end

  it "supports field alias" do
    query_string = <<-QUERY
      {
        allCharges: charges {
          id
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string), initial_value: Query.new)["data"]

    result.should eq({ "allCharges" => [{ "id" => "1" }, { "id" => "2" }, { "id" => "3" }] })
  end

  it "executes with errors" do
    query_string = <<-QUERY
      query {
        charges {
          id
          status
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string), initial_value: Query.new)

    expected_errors = [
      {
        "message" => "Cannot return null for non-nullable field Charge.status",
        "locations" => [] of Oxide::Location
      }
    ]

    expected_data = {
      "charges" => [
        nil,
        { "id" => "2", "status" => "PENDING" },
        nil
      ]
    }

    result["data"].should eq(expected_data)
    result["errors"].should eq(expected_errors)
  end

  it "executes with loader" do
    query_string = <<-QUERY
      query {
        charges {
          id
          refund {
            status

            payment_method {
              ... on BankAccount {
                accountNumber
              }
            }
          }
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string), initial_value: Query.new)["data"]

    expected_response = {
      "charges" => [
        { "id" => "1", "refund" => { "status" => "PENDING", "payment_method" => { "accountNumber" => "1234578" } } },
        { "id" => "2", "refund" => { "status" => "PENDING", "payment_method" => { "accountNumber" => "1234578" } } },
        { "id" => "3", "refund" => { "status" => "PENDING", "payment_method" => { "accountNumber" => "1234578" } } }
      ]
    }

    result.should eq(expected_response)
  end

  it "supports interfaces" do
    query_string = <<-QUERY
      query {
        transactions {
          id
          reference

          ... on Refund {
            partial
          }
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string), initial_value: Query.new)["data"]

    result.should eq({
      "transactions" => [
        { "id" => "1", "reference" => "ch_1234" },
        { "id" => "32", "reference" => "r_5678", "partial" => true }
      ]
    })
  end

  it "supports unions" do
    query_string = <<-QUERY
      query {
        paymentMethods {
          id

          ... on CreditCard {
            last4
          }

          ... on BankAccount {
            accountNumber
          }
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string), initial_value: Query.new)["data"]

    result.should eq({
      "paymentMethods" => [
        { "id" => "1", "last4" => "4242" },
        { "id" => "32", "accountNumber" => "1234567" }
      ]
    })
  end

  it "supports fragment spread and variables" do
    query_string = <<-QUERY
      fragment ChargeInfo on Charge {
        id
      }

      query($id: ID! = 1) {
        charge(id: $id) {
          ...ChargeInfo
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string), initial_value: Query.new)["data"]

    result.should eq({ "charge" => { "id" => "1" } })
  end

  it "supports arguments" do
    query_string = <<-QUERY
      query($id: ID!) {
        charge(id: $id) {
          id
        }
      }
    QUERY

    variables = JSON.parse <<-STRING
      {
        "id": "10"
      }
    STRING

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(query: Oxide::Query.new(query_string, variables: variables.as_h), initial_value: Query.new)["data"]

    result.should eq({ "charge" => { "id" => "10" } })
  end

  it "supports arguments with default values" do
    query_string = <<-QUERY
      query($id: ID! = 1) {
        charge(id: $id) {
          id
        }
      }
    QUERY

    variables = {} of String => JSON::Any

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(
      query: Oxide::Query.new(
        query_string,
        variables: variables
      ),
      initial_value: Query.new
    )["data"]

    result.should eq({ "charge" => { "id" => "1" } })
  end

  it "supports dynamically generated schema" do
    fields = [
      "foo",
      "bar"
    ]

    query_type = Oxide::Types::ObjectType.new(
      name: "DynamicQuery",
      fields: fields.each_with_object({} of String => Oxide::BaseField) do |field_name, memo|
        memo[field_name] = Oxide::Field.new(
          type: Oxide::Types::StringType.new,
          resolve: ->(resolution : Oxide::Resolution(Query)) { field_name }
        )
      end
    )

    schema = Oxide::Schema.new(query: query_type)

    query_string = <<-QUERY
      query {
        foo
        bar
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(schema)

    result = runtime.execute(
      query: Oxide::Query.new(query_string),
      initial_value: Query.new
    )["data"]

    result.should eq({ "foo" => "foo", "bar" => "bar" })
  end

  it "executes correct operation definition" do
    query_string = <<-QUERY
      query allPaymentMethods {
        paymentMethods {
          id
        }
      }

      query allCharges {
        charges {
          id
        }
      }
    QUERY

    runtime = Oxide::Execution::Runtime.new(DummySchema)

    result = runtime.execute(
      query: Oxide::Query.new(query_string, operation_name: "allCharges"),
      initial_value: Query.new
    )["data"]

    result.should eq({ "charges" => [{ "id" => "1" }, { "id" => "2" }, { "id" => "3" }] })
  end
end