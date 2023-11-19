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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.92ms | 100kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.39ms | 59kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.77ms | 53kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.31ms | 46kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.87ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.31ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.77ms | 23kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.03ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.01ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.12ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.52ms | 9.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 20.79ms | 9.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 21.00ms | 9.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.20ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.01ms | 7.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.04ms | 5.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.90ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.99ms | 4.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 93.47ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.92ms | 1.9kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 110.08ms | 1.8kps |
