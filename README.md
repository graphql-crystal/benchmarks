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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.82ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.05ms | 66kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.14ms | 48kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.47ms | 45kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.94ms | 40kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.10ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.96ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.01ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.18ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.68ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.47ms | 12kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.76ms | 10kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.13ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 24.51ms | 8.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.48ms | 6.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.61ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.89ms | 4.3kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 54.03ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 93.77ms | 2.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.08ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 111.95ms | 1.8kps |
