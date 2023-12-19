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
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.84ms | 70kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.93ms | 68kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.05ms | 49kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.90ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.59ms | 36kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.89ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.78ms | 21kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.30ms | 18kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.30ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.74ms | 14kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.75ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.56ms | 9.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 22.30ms | 8.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.24ms | 8.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.82ms | 6.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 42.42ms | 6.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.56ms | 5.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.00ms | 4.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 94.81ms | 2.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 110.98ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 112.01ms | 1.8kps |
