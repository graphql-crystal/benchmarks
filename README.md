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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.96ms | 68kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.00ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.95ms | 51kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.98ms | 40kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.59ms | 36kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.55ms | 23kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.68ms | 21kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.96ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.27ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.42ms | 16kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.72ms | 14kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.79ms | 9.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.55ms | 8.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.62ms | 8.8kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.84ms | 6.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.09ms | 6.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.74ms | 5.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.13ms | 4.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 91.14ms | 2.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 109.27ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 109.62ms | 1.8kps |
