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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.80ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.14ms | 64kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.67ms | 55kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.55ms | 44kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.23ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.12ms | 25kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.54ms | 23kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.94ms | 20kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.48ms | 17kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.72ms | 16kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.42ms | 15kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.46ms | 10kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.10ms | 8.7kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.56ms | 7.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.27ms | 6.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.65ms | 5.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 52.10ms | 3.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 55.44ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 95.82ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 116.80ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 117.80ms | 1.7kps |
