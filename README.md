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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.26ms | 44kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.23ms | 31kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.32ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.42ms | 29kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 6.33ms | 16kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.67ms | 15kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.81ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.27ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.03ms | 8.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.59ms | 8.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.52ms | 6.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.01ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 23.65ms | 4.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.56ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 42.86ms | 2.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 105.40ms | 940ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.24ms | 940ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 109.31ms | 900ps |
