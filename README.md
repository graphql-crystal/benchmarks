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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.34ms | 75kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.54ms | 28kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.58ms | 28kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.89ms | 26kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.39ms | 23kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.33ms | 16kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.76ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.92ms | 10kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 13.20ms | 7.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.62ms | 6.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.32ms | 6.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.68ms | 4.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 21.77ms | 4.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.07ms | 3.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.95ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 41.10ms | 2.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 100.18ms | 990ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 102.65ms | 960ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 137.88ms | 710ps |
