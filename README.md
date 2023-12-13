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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.98ms | 67kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.17ms | 63kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.00ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.02ms | 40kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.39ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.95ms | 23kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.83ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.98ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.68ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 15.65ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.60ms | 9.7kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.25ms | 9.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.06ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.02ms | 7.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.82ms | 5.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.72ms | 5.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.33ms | 4.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 90.57ms | 2.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.23ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 110.54ms | 1.8kps |
