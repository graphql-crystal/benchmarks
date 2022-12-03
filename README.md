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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.23ms | 81kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.25ms | 45kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.96ms | 34kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.16ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.21ms | 31kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.90ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.48ms | 15kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.21ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.37ms | 8.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.05ms | 7.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.27ms | 7.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.88ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 23.68ms | 4.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.00ms | 3.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 39.21ms | 2.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 77.18ms | 1.3kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 99.09ms | 1,000ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 101.78ms | 970ps |
