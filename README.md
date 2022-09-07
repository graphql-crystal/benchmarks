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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.70ms | 59kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.86ms | 26kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 5.82ms | 17kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 6.35ms | 16kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 6.71ms | 15kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 11.09ms | 9.0kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 13.15ms | 7.6kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.65ms | 7.3kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.75ms | 7.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.10ms | 6.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 25.61ms | 3.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 28.74ms | 3.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.89ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 57.55ms | 2.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 54.67ms | 1.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 66.33ms | 1.5kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 137.93ms | 710ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 143.24ms | 690ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 179.02ms | 550ps |
