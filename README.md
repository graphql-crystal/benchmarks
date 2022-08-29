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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.25ms | 80kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.61ms | 38kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.72ms | 27kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.86ms | 26kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.10ms | 24kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.42ms | 13kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.68ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.97ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.28ms | 9.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.70ms | 9.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.44ms | 6.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.55ms | 5.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.60ms | 4.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.58ms | 2.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 49.77ms | 2.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 52.29ms | 1.9kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 116.16ms | 850ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 118.76ms | 830ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 129.43ms | 760ps |
