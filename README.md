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

| Name                          | Language      | Server          | Latency avg      | Requests      |
| ----------------------------  | ------------- | --------------- | ---------------- | ------------- |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.38ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.49ms | 9.2kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10.79ms | 9.0kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.44ms | 7.9kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.50ms | 7.9kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 13.18ms | 7.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.68ms | 6.7kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 16.09ms | 6.1kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 16.63ms | 5.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 21.05ms | 4.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 26.99ms | 3.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.67ms | 3.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 42.04ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 50.28ms | 2.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 71.08ms | 1.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 59.75ms | 1.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 101.36ms | 980ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 112.44ms | 880ps |
