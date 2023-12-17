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
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.77ms | 72kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.86ms | 70kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.18ms | 48kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.74ms | 42kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.49ms | 36kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.58ms | 21kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.66ms | 21kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.96ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.11ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.44ms | 14kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.44ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.17ms | 9.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.17ms | 8.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 26.52ms | 7.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 30.52ms | 6.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.42ms | 6.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.36ms | 5.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 49.16ms | 4.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 86.78ms | 2.3kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 107.65ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 108.05ms | 1.8kps |
