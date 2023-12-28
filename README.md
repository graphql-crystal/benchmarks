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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.88ms | 110kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.93ms | 68kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.00ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.07ms | 49kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.86ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.45ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.82ms | 23kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.76ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.08ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.67ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.56ms | 14kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 20.94ms | 9.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.32ms | 9.4kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 21.99ms | 9.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.93ms | 8.4kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 29.57ms | 6.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 42.45ms | 6.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.89ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 44.83ms | 4.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 92.76ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 110.08ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 112.06ms | 1.8kps |
