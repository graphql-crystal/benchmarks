# GraphQL server benchmarks

Benchmarks of the following GraphQL implementations:

* Crystal: [graphql-crystal](https://github.com/graphql-crystal/graphql)
* Go: [gqlgen](https://github.com/99designs/gqlgen), [graphql-go](https://github.com/graphql-go/graphql)
* JavaScript: [graphql-jit](https://github.com/zalando-incubator/graphql-jit), [graphql-js](https://github.com/graphql/graphql-js), [graphql-yoga](https://github.com/dotansimha/graphql-yoga)
* Rust: [async-graphql](https://github.com/async-graphql/async-graphql), [Juniper](https://github.com/graphql-rust/juniper)
* .NET: [HotChocolate](https://github.com/ChilliCream/hotchocolate)
* Pyton: [Graphene](https://github.com/graphql-python/graphene)
* JVM: [Sanngria](https://github.com/sangria-graphql/sangria)

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
| graphql-crystal | 54884.67     |
| juniper         | 34539.78     |
| gqlgen          | 33863.32     |
| async-graphql   | 33832.83     |
| hotchocolate    | 23054.02     |
| graphql-go      | 11852.35     |
| graphql-jit     | 8011.40      |
| graphql-js      | 3112.23      |
| graphql-yoga    | 2957.19      |
| graphene        | 1438.09      |

Results here are updated sporadically. For the latest results, see [actions](https://github.com/graphql-crystal/benchmarks/actions).