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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.17ms | 86kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.51ms | 40kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.18ms | 31kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.34ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.69ms | 27kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.91ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.17ms | 16kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 7.33ms | 14kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.00ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.68ms | 8.6kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 13.45ms | 7.4kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.06ms | 7.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.56ms | 5.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.46ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.11ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 36.76ms | 2.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 95.23ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 99.51ms | 990ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 117.49ms | 840ps |
