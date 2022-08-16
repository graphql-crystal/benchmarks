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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.35ms | 74kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.60ms | 38kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.42ms | 29kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.22ms | 24kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.29ms | 23kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.42ms | 13kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.41ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.01ms | 10.0kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.63ms | 9.4kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.53ms | 8.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 17.55ms | 5.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.24ms | 4.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.81ms | 4.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.71ms | 2.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 49.01ms | 2.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.36ms | 2.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 115.83ms | 860ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 117.10ms | 840ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 122.28ms | 810ps |
