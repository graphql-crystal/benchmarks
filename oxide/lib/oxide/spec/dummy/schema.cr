require "../../src/oxide"
require "./models/*"

class TransactionTypeResolver < Oxide::TypeResolver
  def resolve_type(object : Charge, context)
    ChargeType
  end

  def resolve_type(object : Refund, context)
    RefundType
  end

  def resolve_type(object, context)
    raise "Could not resolve transaction type"
  end
end

TransactionInterface = Oxide::Types::InterfaceType.new(
  name: "Transaction",
  type_resolver: TransactionTypeResolver.new,
  fields: {
    "id" => Oxide::Field.new(
      type: Oxide::Types::IdType.new,
      resolve: ->(resolution : Oxide::Resolution(Charge | Refund)){
        resolution.object.id
      }
    ),
    "reference" => Oxide::Field.new(
      type: Oxide::Types::StringType.new,
      resolve: ->(resolution : Oxide::Resolution(Charge | Refund)) { resolution.object.reference }
    )
  }
)

ChargeType = Oxide::Types::ObjectType.new(
  name: "Charge",
  interfaces: [TransactionInterface],
  fields: {
    "status" => Oxide::Field.new(
      type: Oxide::Types::NonNullType.new(
        of_type:  Oxide::Types::EnumType.new(
          name: "ChargeStatus",
          values: [
            Oxide::Types::EnumValue.new(name: "PENDING", value: "pending"),
            Oxide::Types::EnumValue.new(name: "PAID", value: "paid")
          ]
        )
      ),
      resolve: ->(resolution : Oxide::Resolution(Charge)) { resolution.object.status }
    ),
    "refund" => Oxide::Field.new(
      type: RefundType,
      resolve: ->(resolution : Oxide::Resolution(Charge)) { Refund.new(resolution.object.id, "pending", "r_12345", false) }
    )
  }
)

RefundType = Oxide::Types::ObjectType.new(
  name: "Refund",
  interfaces: [TransactionInterface],
  fields: {
    "status" => Oxide::Field.new(
      type: Oxide::Types::EnumType.new(
        name: "RefundStatus",
        values: [
          Oxide::Types::EnumValue.new(name: "PENDING", value: "pending"),
          Oxide::Types::EnumValue.new(name: "REFUNDED", value: "refunded")
        ]
      ),
      resolve: ->(resolution : Oxide::Resolution(Refund)) { resolution.object.status }
    ),
    "partial" => Oxide::Field.new(
      type: Oxide::Types::BooleanType.new,
      resolve: ->(resolution : Oxide::Resolution(Refund)) { resolution.object.partial }
    ),
    "payment_method" => Oxide::Field.new(
      type: PaymentMethodType,
      resolve: ->(resolution : Oxide::Resolution(Refund)) { BankAccount.new(1, "1234578") }
    )
  }
)

CreditCardType = Oxide::Types::ObjectType.new(
  name: "CreditCard",
  fields: {
    "id" => Oxide::Field.new(
      type: Oxide::Types::IdType.new,
      resolve: ->(resolution : Oxide::Resolution(CreditCard)) { resolution.object.id }
    ),
    "last4" => Oxide::Field.new(
      type: Oxide::Types::StringType.new,
      resolve: ->(resolution : Oxide::Resolution(CreditCard)) { resolution.object.last4 }
    )
  }
)

BankAccountType = Oxide::Types::ObjectType.new(
  name: "BankAccount",
  fields: {
    "id" => Oxide::Field.new(
      type: Oxide::Types::IdType.new,
      resolve: ->(resolution : Oxide::Resolution(BankAccount)) { resolution.object.id }
    ),
    "accountNumber" => Oxide::Field.new(
      type: Oxide::Types::StringType.new,
      resolve: ->(resolution : Oxide::Resolution(BankAccount)) { resolution.object.account_number }
    )
  }
)

class PaymentMethodTypeResolver < Oxide::TypeResolver
  def resolve_type(object : CreditCard, context)
    CreditCardType
  end

  def resolve_type(object : BankAccount, context)
    BankAccountType
  end

  def resolve_type(object, context)
    raise "Could not resolve payment method type"
  end
end

PaymentMethodType = Oxide::Types::UnionType.new(
  name: "PaymentMethod",
  type_resolver: PaymentMethodTypeResolver.new,
  possible_types: [
    CreditCardType.as(Oxide::Type),
    BankAccountType.as(Oxide::Type)
  ]
)

CreateChargeInputObject = Oxide::Types::InputObjectType.new(
  name: "CreateChargeInput",
  input_fields: {
    "reference" => Oxide::Argument.new(
      type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::StringType.new)
    )
  }
)

DummySchema = Oxide::Schema.new(
  query: Oxide::Types::ObjectType.new(
    name: "Query",
    fields: {
      "charge" => Oxide::Field.new(
        type: Oxide::Types::NonNullType.new(of_type: ChargeType),
        resolve: ->(resolution : Oxide::Resolution(Query)){
          Charge.new(id: resolution.arguments["id"].to_s.to_i32, status: "pending", reference: "ch_1234")
        },
        arguments: {
          "id" => Oxide::Argument.new(
            type: Oxide::Types::IdType.new
          )
        }
      ),
      "charges" => Oxide::Field.new(
        type: Oxide::Types::NonNullType.new(
          of_type: Oxide::Types::ListType.new(of_type: ChargeType)
        ),
        resolve: ->(resolution : Oxide::Resolution(Query)){
          [
            Charge.new(id: 1, status: nil, reference: "ch_1234"),
            Charge.new(id: 2, status: "pending", reference: "ch_5678"),
            Charge.new(id: 3, status: nil, reference: "ch_5678")
          ]
        },
      ),
      "transactions" => Oxide::Field.new(
        type: Oxide::Types::NonNullType.new(
          of_type: Oxide::Types::ListType.new(of_type: TransactionInterface)
        ),
        resolve: ->(resolution : Oxide::Resolution(Query)){
          [
            Charge.new(id: 1, status: "paid", reference: "ch_1234"),
            Refund.new(id: 32, status: "refunded", reference: "r_5678", partial: true)
          ]
        }
      ),
      "paymentMethods" => Oxide::Field.new(
        type: Oxide::Types::NonNullType.new(
          of_type: Oxide::Types::ListType.new(of_type: PaymentMethodType)
        ),
        resolve: ->(resolution : Oxide::Resolution(Query)){
          [
            CreditCard.new(id: 1, last4: "4242"),
            BankAccount.new(id: 32, account_number: "1234567")
          ]
        }
      ),
      "nullList" => Oxide::Field.new(
        type: Oxide::Types::ListType.new(
          of_type: Oxide::Types::NonNullType.new(of_type: ChargeType)
        ),
        resolve: ->(resolution : Oxide::Resolution(Query)){
          [nil]
        }
      )
    }
  ),
  mutation: Oxide::Types::ObjectType.new(
    name: "Mutation",
    fields: {
      "createCharge" => Oxide::Field.new(
        type: ChargeType,
        arguments: {
          "input" => Oxide::Argument.new(
            type: CreateChargeInputObject
          )
        },
        resolve: ->(resolution : Oxide::Resolution(Query)){
          nil
        }
      )
    }
  ),
  orphan_types: [
    RefundType.as(Oxide::Type)
  ]
)