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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.56ms | 64kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.05ms | 33kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.13ms | 24kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.90ms | 20kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.94ms | 20kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.76ms | 11kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.51ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.85ms | 10kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.40ms | 8.8kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 16.17ms | 6.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.72ms | 4.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 25.91ms | 3.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 33.26ms | 3.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 39.14ms | 2.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 51.43ms | 2.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 48.21ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 125.93ms | 790ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 127.54ms | 770ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 175.67ms | 560ps |
