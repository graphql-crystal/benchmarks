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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.25ms | 80kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.76ms | 36kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.82ms | 35kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 2.87ms | 35kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 2.92ms | 34kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.20ms | 31kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.83ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.16ms | 16kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.40ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.72ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8.94ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 9.74ms | 10kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 12.71ms | 7.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 17.59ms | 5.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.83ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 25.20ms | 4.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.68ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 34.44ms | 2.9kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 81.50ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 85.78ms | 1.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 121.55ms | 810ps |
