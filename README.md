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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.41ms | 71kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.92ms | 34kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.32ms | 23kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.54ms | 22kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.80ms | 21kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.85ms | 13kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.65ms | 10kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.30ms | 8.9kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.41ms | 8.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.92ms | 7.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.97ms | 5.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.03ms | 4.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 26.76ms | 3.7kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 41.14ms | 2.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.86ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 61.08ms | 1.6kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 133.02ms | 740ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 136.74ms | 720ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 157.00ms | 630ps |
