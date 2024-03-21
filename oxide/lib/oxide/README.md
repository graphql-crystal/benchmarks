# Graphql in Crystal

## Oxide

Oxide is a low level library that implements the core of GraphQL following the spec as closely as possible. The schema is defined by creating instances of core types (`Schema`, `Field`, `Type`, `Argument`...). This provides an AST which is used in both the execution and validation phases.

This library was originally built to experiment with building dynamic schemas on a per tenant basis. An early prototype allowed a user to define their models within a UI and a custom GraphQL API would be generated at runtime.

### TODO

- [ ] Parser & Lexer
  - [ ] Fully support block strings
  - [ ] Add tests for parsing errors
- [ ] Error handling
  - [ ] Raise appropriate classes of exceptions within runtime
  - [ ] Raise errors during validation phase
  - [ ] Handle exceptions to generate an errored response
- Static validation (https://spec.graphql.org/October2021/#sec-Validation)
  - [x] Documents
    - [ ] ~~Executable Definitions~~ _Currently all definitions are executable so enforced by the type system_
  - [x] Operations
    - [x] Named Operation Definitions
    - [x] Anonymous Operation Definitions
    - [ ] ~~Subscription Operation Definitions~~ _Subscriptions are not supported at this time_
  - [ ] Fields
    - [x] Field Selections
    - [ ] Field Selection Merging
    - [x] Leaf Field Selections
  - [x] Arguments
    - [x] Argument Names
    - [x] Argument Uniqueness
  - [ ] Fragments
    - [ ] Fragment Declarations
      - [ ] Fragment Name Uniqueness
      - [ ] Fragment Spread Type Existence
      - [ ] Fragments on Composite Types
      - [ ] Fragments Must Be Used
    - [ ] Fragment Spreads
      - [ ] Fragment Spread Target Defined
      - [ ] Fragment Spreads Must Not Form Cycles
      - [ ] Fragment Spread is Possible
  - [ ] Values
    - [ ] Values of Correct Type
    - [x] Input Object Field Names
    - [x] Input Object Field Uniqueness
    - [ ] Input Object Required Fields
  - [x] Directives
    - [x] Directives Are Defined
    - [x] Directives Are In Valid Locations
    - [x] Directives Are Unique Per Location
  - [ ] Variables
    - [x] Variable Uniqueness
    - [x] Variables are Input Types
    - [x] All Variable Uses Defined
    - [x] All Variables Used
    - [ ] All Variable Usages are Allowed
- [ ] Custom directives
  - [x] SCHEMA
  - [x] SCALAR
  - [x] OBJECT
  - [x] FIELD_DEFINITION
  - [x] ARGUMENT_DEFINITION
  - [x] INTERFACE
  - [x] UNION
  - [x] ENUM
  - [x] ENUM_VALUE
  - [x] INPUT_OBJECT
  - [x] INPUT_FIELD_DEFINITION
- [ ] Test framework
  - [ ] Validating responses
  - [ ] Generating schema + resolvers
- [ ] Validate scalar coercion and serialization is compliant

### Features

#### Queries

- [x] Libgraphqlpaser based parser

#### Built-in Types

- [x] Scalars
  - [x] Int
  - [x] Float
  - [x] String
  - [x] Boolean
  - [x] ID
- [x] Object
- [x] Interface
- [x] Union
- [x] Enum
- [x] Input Object
- [x] List
- [x] Non-Null
- [x] Directive
  - [x] @skip
  - [x] @include
  - [x] @deprecated
  - [x] @specifiedBy

#### Execution

- [x] Queries
- [x] Mutations
- [ ] Subscriptions
- [x] Lazy execution

### Schema

#### Late Bound Type

Oxide introduces a custom type called `LateBoundType` that allows you to refer to another type in the schema by name. This was introduced to allow recursively/cyclic defined types. As types are defined as objects we cannot use itself during it's own definition. The runtime will automatically look up late bound types from the schema during execution and therefore need to either be already directly referenced or provided when instantiating the schema with the `orphan_types` parameter.

*Example*

This example is taken from the introspection schema. The `_Type` object contains a list of all `possibleTypes` which is a list of `_Type` objects.

```crystal
  TypeType = Oxide::Types::ObjectType.new(
    name: "__Type",
    fields: {
      ...
      "possibleTypes" => Oxide::Field.new(
        type: Oxide::Types::ListType.new(
          of_type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::LateBoundType.new("__Type")
          )
        )
      ),
      ...
    }
  )
```

### Runtime

A goal when building the `Runtime` was to follow the GraphQL Spec on Execution (https://spec.graphql.org/October2021/#sec-Executing-Requests) as closely as possible. Variable names and methods are mostly taken from the spec (albeit converted to snake_case).

It is likely as more features are introduced the implementation may diverge from the spec slightly.

#### Lazy and Loader

A `Lazy` object defers completion of a value until required. It is a synchronous future implementation. Each `Lazy` has a callback that is responsible for resolving it's value. This can be used to batch up operations when fetching multiple children of a list. Take the following query which fetches a list of charges and for each charge returns an associated payment method:

```graphql
{
  charges {
    id
    amount
    paymentMethod {
      id
      name
    }
  }
}
```

By default GraphQL will execute depth first. For each charge it will resolve its payment method and all the child nodes (`id`, `name`) before moving to the next charge. If we are fetching this information from a database this would typically introduce an N+1 query. For each charge we would perform a separate query for it's payment method.

Instead we can store the identifier of the charge into a list and return a `Lazy` future object that tells the runtime we will eventually provide the payment method but for now to pause the depth first implementation and instead move on to the next charge. When we have iterated through all charges the runtime knows that we still need to complete the payment method field. The runtime asks the `Lazy` object for it's value which will trigger it's callback. Now we have all the charge identifiers in a list we can fetch them all at once in a single query and provide each `Lazy` object with it's value.

Oxide comes with a built in `Loader` abstract class that can be extended to provide simple batch loading. It automatically generates the `Lazy` objects and provides a callback that will fulfill each `Lazy` with it's value. A `perform` method must be implemented that receives an array of identifiers and for each identifier `fulfill` must be called.

##### Example

```crystal
class PaymentMethodLoader < Oxide::Loader(Int32, PaymentMethod)
  def perform(load_keys)
    payment_methods = PaymentMethod.where(charge_id: load_keys).to_a

    load_keys.each do |key|
      payment_method = payment_methods.find { |pm| pm.charge_id == key }

      fulfill(key, payment_method)
    end
  end
end
```
