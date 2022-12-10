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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.02ms | 49kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.54ms | 28kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 5.96ms | 17kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 6.87ms | 15kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 6.92ms | 14kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 11.21ms | 8.9kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.30ms | 8.8kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.45ms | 6.9kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.40ms | 6.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 24.92ms | 4.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 26.61ms | 3.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 30.14ms | 3.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 54.26ms | 2.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 50.32ms | 2.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 57.10ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 136.33ms | 720ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 138.52ms | 710ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 188.08ms | 520ps |
