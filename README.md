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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.86ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.47ms | 58kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.49ms | 57kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.00ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.94ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.26ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.28ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.00ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.96ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.02ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 15.90ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.86ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 20.58ms | 9.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.00ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.49ms | 7.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.33ms | 5.8kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.73ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.83ms | 4.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 92.59ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.36ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 108.65ms | 1.8kps |
