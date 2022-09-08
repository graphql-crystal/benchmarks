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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.79ms | 56kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.11ms | 24kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 5.90ms | 17kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 6.43ms | 16kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 6.81ms | 15kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 10.54ms | 9.5kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.54ms | 8.0kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.97ms | 7.7kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.21ms | 6.6kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.44ms | 6.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 27.01ms | 3.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 31.63ms | 3.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.70ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 60.40ms | 2.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 48.74ms | 2.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 64.49ms | 1.5kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 138.85ms | 710ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 143.87ms | 680ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 154.55ms | 630ps |
