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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.87ms | 110kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.97ms | 67kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.01ms | 66kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.10ms | 49kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.93ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.47ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.16ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.03ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.50ms | 17kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 12.12ms | 16kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.14ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.31ms | 9.0kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 23.24ms | 8.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.52ms | 8.1kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 24.84ms | 8.0kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 29.57ms | 6.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.65ms | 5.9kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.56ms | 5.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.68ms | 4.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 97.76ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 112.95ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 112.98ms | 1.7kps |
