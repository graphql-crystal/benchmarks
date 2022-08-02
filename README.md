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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.24ms | 80kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.53ms | 40kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.36ms | 30kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.71ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.98ms | 25kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.88ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.43ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.49ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.20ms | 9.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.95ms | 8.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.55ms | 6.4kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 17.93ms | 5.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 21.90ms | 4.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.06ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.96ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.01ms | 2.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.43ms | 960ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 104.58ms | 950ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 104.92ms | 940ps |
