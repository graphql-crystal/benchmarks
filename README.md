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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.26ms | 61kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.94ms | 51kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.46ms | 45kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.20ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.96ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.90ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.75ms | 19kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 12.54ms | 16kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.77ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 20.77ms | 9.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.18ms | 9.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.21ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.85ms | 7.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.07ms | 6.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.34ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.60ms | 4.3kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 54.48ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 92.20ms | 2.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 111.34ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.39ms | 1.8kps |
