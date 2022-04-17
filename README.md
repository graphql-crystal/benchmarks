<!-- README.md is generated from README.ecr, do not edit -->

# GraphQL server benchmarks

Graphql server benchmarks in many languages. Pull requests welcome.

All servers implement a simple schema:

```graphql
type Query {
  hello: String!
}
```

The returned string is always `world`.

The API is served over HTTP using a common web server and load tested using [k6](https://github.com/grafana/k6).

### Results

| Name                          | Language      | Server          | Requests/s    | Latency avg      |
| ----------------------------  | ------------- | --------------- | ------------- | ---------------- |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 11433.5 | 8.56 |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9873.21 | 9.83 |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9808.06 | 9.9 |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8772.3 | 11.26 |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 8130.36 | 12.07 |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8052.88 | 12.17 |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7151.38 | 13.84 |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 6770.44 | 14.6 |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6710.2 | 14.69 |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js |  | 5013.96 | 19.76 |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 3835.52 | 25.85 |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 3214.4 | 30.84 |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 2130.21 | 46.58 |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 1498.94 | 65.87 |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 1492.69 | 55.62 |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 1094.51 | 90.63 |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Scala | Akka HTTP | 937.45 | 105.81 |
