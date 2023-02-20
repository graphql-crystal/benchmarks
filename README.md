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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.21ms | 82kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.48ms | 40kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.32ms | 30kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.53ms | 28kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.80ms | 26kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.73ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.96ms | 14kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.38ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.72ms | 10kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.50ms | 8.7kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 14.29ms | 7.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.34ms | 7.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.31ms | 5.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 25.39ms | 3.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.96ms | 3.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 38.87ms | 2.6kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 97.36ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 100.13ms | 990ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 124.10ms | 790ps |
