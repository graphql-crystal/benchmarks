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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.14ms | 88kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.31ms | 43kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.94ms | 34kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.13ms | 32kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.47ms | 29kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.48ms | 18kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.43ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.26ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.67ms | 12kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.47ms | 8.0kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.79ms | 7.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.85ms | 7.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.38ms | 5.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.32ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 40.10ms | 3.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 34.75ms | 2.9kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 101.51ms | 970ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 107.97ms | 920ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 108.75ms | 910ps |
