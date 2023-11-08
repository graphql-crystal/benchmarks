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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.03ms | 66kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.02ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.90ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.47ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.96ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.94ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.93ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.99ms | 12kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 17.87ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 19.37ms | 10kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.05ms | 9.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.05ms | 8.7kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.39ms | 7.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.95ms | 5.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 48.25ms | 5.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.56ms | 4.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 87.51ms | 2.3kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 107.45ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 108.80ms | 1.8kps |
