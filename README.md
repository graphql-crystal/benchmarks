# GraphQL server benchmarks

Benchmarks of the following GraphQL implementations:

* Crystal: [graphql-crystal](https://github.com/graphql-crystal/graphql)
* Go: [gqlgen](https://github.com/99designs/gqlgen)
* JavaScript: [graphql-jit](https://github.com/zalando-incubator/graphql-jit), [graphql-js](https://github.com/graphql/graphql-js), [graphql-yoga](https://github.com/dotansimha/graphql-yoga)
* Rust: [async-graphql](https://github.com/async-graphql/async-graphql), [Juniper](https://github.com/graphql-rust/juniper)
* .NET: [HotChocolate](https://github.com/ChilliCream/hotchocolate)
* Pyton: [Graphene](https://github.com/graphql-python/graphene)

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

Note: The results below are a sample from [GitHub actions](https://github.com/graphql-crystal/benchmarks/actions).
We've seen better performance from the Rust implementations on other machines.


| Name            | Requests/sec |
|-----------------|--------------|
| graphql-crystal | 54725.47     |
| gqlgen          | 35256.42     |
| async-graphql   | 35064.59     |
| juniper         | 34963.61     |
| hotchocolate    | 22342.32     |
| graphql-jit     | 7627.25      |
| graphql-js      | 3144.17      |
| graphql-yoga    | 2920.88      |
| graphene        | 1441.74      |