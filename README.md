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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.54ms | 65kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.24ms | 31kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.74ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.84ms | 26kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.89ms | 26kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.01ms | 25kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.53ms | 13kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.84ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.39ms | 8.8kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.80ms | 8.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.41ms | 7.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.12ms | 6.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 20.37ms | 4.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 26.96ms | 3.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 29.19ms | 3.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 38.92ms | 2.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.44ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 52.78ms | 1.9kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 99.45ms | 990ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 104.10ms | 950ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 170.34ms | 580ps |
