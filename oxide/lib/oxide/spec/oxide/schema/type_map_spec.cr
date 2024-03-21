require "../../spec_helper"

describe Oxide::TypeMap do
  it "collects all types" do
    traversal = Oxide::TypeMap.new(DummySchema)
    type_map = traversal.generate

    type_map.keys.sort.should eq(["Query", "Mutation", "Charge", "ID", "CreditCard", "String", "PaymentMethod", "BankAccount", "Refund", "Boolean", "Transaction", "ChargeStatus", "RefundStatus", "CreateChargeInput"].sort)
  end
end