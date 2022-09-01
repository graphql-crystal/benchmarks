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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.16ms | 86kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.24ms | 45kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.95ms | 34kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.26ms | 31kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.37ms | 30kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.69ms | 18kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.99ms | 14kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.25ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.61ms | 12kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.09ms | 8.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.15ms | 7.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.06ms | 7.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.92ms | 5.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.08ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.30ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.94ms | 3.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 95.63ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 106.52ms | 930ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.93ms | 910ps |
