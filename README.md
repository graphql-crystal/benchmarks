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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.39ms | 72kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.06ms | 33kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.43ms | 29kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.89ms | 26kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.35ms | 23kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.25ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 7.96ms | 12kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.16ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.05ms | 9.9kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 16.50ms | 6.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.78ms | 6.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.07ms | 5.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.99ms | 4.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.16ms | 2.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.12ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 43.28ms | 2.3kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 98.75ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 99.65ms | 1,000ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 134.11ms | 730ps |
