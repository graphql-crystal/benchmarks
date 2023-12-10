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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.90ms | 100kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.93ms | 68kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.98ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.40ms | 45kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.89ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.50ms | 36kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.32ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.65ms | 19kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.37ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 15.01ms | 13kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.53ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.43ms | 9.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 22.16ms | 9.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.13ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 30.74ms | 6.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.76ms | 5.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.93ms | 5.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.08ms | 4.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 93.22ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 110.04ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.38ms | 1.8kps |
