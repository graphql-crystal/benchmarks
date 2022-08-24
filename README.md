<!-- README.md is generated from README.ecr, do not edit -->

# GraphQL server benchmarks

Graphql server benchmarks in many languages. Pull requests welcome, please read [CONTRIBUTING.md](CONTRIBUTING.md)

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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.12ms | 89kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.17ms | 46kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.85ms | 35kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.11ms | 32kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.36ms | 30kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.69ms | 18kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.16ms | 16kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.03ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.37ms | 12kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.70ms | 8.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.68ms | 7.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.68ms | 7.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.79ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 23.99ms | 4.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.75ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 33.24ms | 3.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 89.91ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 102.25ms | 970ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.06ms | 960ps |
