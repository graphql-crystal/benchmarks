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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.41ms | 70kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.97ms | 34kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.77ms | 27kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.05ms | 25kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.27ms | 23kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.21ms | 14kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.34ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.89ms | 9.2kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.16ms | 7.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.44ms | 6.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 15.63ms | 6.4kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.56ms | 5.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.92ms | 4.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.02ms | 2.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.30ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 41.54ms | 2.4kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 104.30ms | 950ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 106.34ms | 930ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 150.67ms | 660ps |
