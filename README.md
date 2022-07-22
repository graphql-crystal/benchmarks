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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.44ms | 69kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.63ms | 38kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.65ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.93ms | 25kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.07ms | 25kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.75ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.98ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.23ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.13ms | 9.9kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.84ms | 7.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.58ms | 6.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 21.05ms | 4.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 30.98ms | 3.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.36ms | 3.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 37.88ms | 2.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 49.65ms | 2.6kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 94.47ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 102.37ms | 970ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 106.56ms | 930ps |
