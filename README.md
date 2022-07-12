<!-- README.md is generated from README.ecr, do not edit -->

# GraphQL server benchmarks

Graphql server benchmarks in many languages. Pull requests welcome.

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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.18ms | 84kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.27ms | 44kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.03ms | 33kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.09ms | 32kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.28ms | 30kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.99ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.81ms | 15kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.36ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.20ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.81ms | 9.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.94ms | 7.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 16.95ms | 5.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.61ms | 5.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.51ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.68ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 34.87ms | 2.9kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 84.00ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.80ms | 950ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 105.10ms | 940ps |
