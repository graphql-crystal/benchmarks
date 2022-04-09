# GraphQL server benchmarks

Benchmarks of the following GraphQL implementations:

* Crystal: [graphql-crystal](https://github.com/graphql-crystal/graphql)
* Go: [gqlgen](https://github.com/99designs/gqlgen), [graphql-go](https://github.com/graphql-go/graphql)
* JavaScript: [graphql-jit](https://github.com/zalando-incubator/graphql-jit), [graphql-js](https://github.com/graphql/graphql-js), [graphql-yoga](https://github.com/dotansimha/graphql-yoga)
* Rust: [async-graphql](https://github.com/async-graphql/async-graphql), [Juniper](https://github.com/graphql-rust/juniper)
* .NET: [HotChocolate](https://github.com/ChilliCream/hotchocolate)
* Python: [Graphene](https://github.com/graphql-python/graphene), [Strawberry](https://github.com/strawberry-graphql/strawberry), [tartiflette](https://github.com/tartiflette/tartiflette)
* JVM: [Sangria](https://github.com/sangria-graphql/sangria)
* Ruby: [agoo](https://github.com/ohler55/agoo)

Pull requests welcome.

All servers implement a simple schema:

```graphql
type Query {
  hello: String!
}
```

The returned string is always `world`.

The API is served over HTTP using a common web server and load tested using [wrk](https://github.com/wg/wrk).

### Results

| Name            | Requests/sec |
|-----------------|--------------|
| graphql-crystal | 45705        |
| gqlgen          | 30724        |
| async-graphql   | 30333        |
| juniper         | 29376        |
| hotchocolate    | 18483        |
| graphql-go      | 10031        |
| graphql-jit     | 6242         |
| graphql-js      | 2645         |
| graphql-yoga    | 2451         |
| sangria         | 1588         |
| graphene        | 1238         |

Results are updated sporadically. For the latest results, see [actions](https://github.com/graphql-crystal/benchmarks/actions).