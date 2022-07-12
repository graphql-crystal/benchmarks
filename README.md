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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.10ms | 91kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.30ms | 44kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.21ms | 31kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.22ms | 31kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.23ms | 31kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.99ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.37ms | 16kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.28ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.85ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.79ms | 10kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.65ms | 7.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.75ms | 6.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.80ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.41ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.84ms | 3.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 35.10ms | 2.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 91.62ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 103.19ms | 960ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.08ms | 940ps |
