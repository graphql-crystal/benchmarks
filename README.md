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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.22ms | 82kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.75ms | 36kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.15ms | 32kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.51ms | 28kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.55ms | 28kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.94ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.16ms | 16kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8.45ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.12ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.23ms | 8.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 16.80ms | 5.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 20.18ms | 4.9kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.15ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.45ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.99ms | 3.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 91.37ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 109.76ms | 900ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 109.78ms | 900ps |
