# GraphQL Benchmarks

Benchmarks of the following GraphQL implementations:

* Crystal: [graphql-crystal](https://github.com/graphql-crystal/graphql)
* Go: [gqlgen](https://github.com/99designs/gqlgen)
* JavaScript: [graphql-jit](https://github.com/zalando-incubator/graphql-jit), [graphql-js](https://github.com/graphql/graphql-js)
* Rust: [async-graphql](https://github.com/async-graphql/async-graphql), [Juniper](https://github.com/graphql-rust/juniper)

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
| graphql-crystal | 55402.33     |
| gqlgen          | 35166.58     |
| async-graphql   | 34755.06     |
| juniper         | 34950.00     |
| graphql-jit     | 8798.84      |
| graphql-js      | 6110.67      |
