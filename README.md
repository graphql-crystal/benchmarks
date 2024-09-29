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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.86ms | 70kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.92ms | 51kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.42ms | 45kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.22ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.48ms | 27kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.21ms | 24kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.03ms | 20kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.83ms | 19kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.19ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.19ms | 15kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.79ms | 11kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.75ms | 8.8kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 24.81ms | 8.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.65ms | 6.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.23ms | 5.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.44ms | 4.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 54.54ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 88.28ms | 2.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 114.75ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.02ms | 1.7kps |
