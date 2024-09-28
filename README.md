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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.81ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.04ms | 66kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.74ms | 53kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.33ms | 46kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.97ms | 40kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.46ms | 27kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.39ms | 24kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.22ms | 20kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.82ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.34ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.84ms | 14kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.23ms | 10kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.25ms | 8.6kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.11ms | 7.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.79ms | 6.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.03ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.75ms | 4.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 53.06ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 99.72ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.70ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 117.26ms | 1.7kps |
