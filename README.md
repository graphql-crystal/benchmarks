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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.93ms | 52kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.82ms | 26kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 5.44ms | 18kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.05ms | 14kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 7.57ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.03ms | 8.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 12.22ms | 8.2kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.60ms | 7.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 13.78ms | 7.2kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.55ms | 6.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 27.50ms | 3.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 27.93ms | 3.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.65ms | 3.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 62.29ms | 2.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 54.28ms | 1.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 66.79ms | 1.5kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 141.49ms | 700ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 142.12ms | 690ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 195.86ms | 500ps |
