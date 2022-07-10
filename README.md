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

The API is served over HTTP using a common web server and load tested using [bombardier](https://github.com/codesenberg/bombardier).

### Results

| Name                          | Language      | Server          | Latency avg      | Requests      |
| ----------------------------  | ------------- | --------------- | ---------------- | ------------- |
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.34ms | 75kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.62ms | 38kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.29ms | 30kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.50ms | 29kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.82ms | 26kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.10ms | 14kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.18ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.40ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.11ms | 9.9kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.20ms | 8.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.28ms | 6.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 17.57ms | 5.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.51ms | 4.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.55ms | 2.8kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 37.72ms | 2.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 41.20ms | 2.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 101.74ms | 970ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 114.06ms | 870ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 114.96ms | 860ps |
