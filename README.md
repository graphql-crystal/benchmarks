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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.90ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.31ms | 61kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.52ms | 57kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.26ms | 47kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.17ms | 39kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.52ms | 36kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.55ms | 21kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 11.78ms | 17kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.89ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.19ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 20.75ms | 9.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.28ms | 9.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.34ms | 9.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.69ms | 8.1kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 31.54ms | 6.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 36.90ms | 5.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 48.10ms | 5.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.75ms | 4.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 121.87ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 119.24ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 121.69ms | 1.6kps |
