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
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.10ms | 32kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.11ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.36ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.96ms | 25kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.97ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.09ms | 16kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.93ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.05ms | 9.0kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 12.26ms | 8.1kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.72ms | 7.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 16.92ms | 5.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.07ms | 5.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.73ms | 4.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.31ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.87ms | 3.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 94.63ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 96.46ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 114.80ms | 860ps |
