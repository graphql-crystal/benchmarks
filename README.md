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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.33ms | 75kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 2.89ms | 35kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.96ms | 34kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.04ms | 33kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.10ms | 32kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 6.17ms | 16kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.41ms | 16kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.61ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.72ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 10.25ms | 9.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.74ms | 9.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 14.77ms | 6.8kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 15.15ms | 6.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.16ms | 5.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 25.57ms | 3.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 41.48ms | 3.1kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 37.12ms | 2.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 84.00ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 84.73ms | 1.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 131.51ms | 750ps |
