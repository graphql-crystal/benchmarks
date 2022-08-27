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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.15ms | 87kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.28ms | 44kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.89ms | 35kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.10ms | 32kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.24ms | 31kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 5.50ms | 18kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.85ms | 17kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.15ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.50ms | 12kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.86ms | 8.4kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.29ms | 8.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 15.67ms | 6.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.47ms | 5.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.41ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.97ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 33.07ms | 3.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 87.14ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 103.43ms | 960ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.19ms | 940ps |
