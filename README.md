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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.35ms | 60kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.42ms | 58kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.97ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.00ms | 40kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.48ms | 36kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.23ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.07ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.94ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.74ms | 15kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.96ms | 13kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 19.68ms | 10kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.16ms | 9.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.35ms | 8.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.64ms | 7.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.56ms | 5.8kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.02ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.22ms | 4.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 82.63ms | 2.4kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 108.30ms | 1.9kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.56ms | 1.8kps |
