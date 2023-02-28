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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.33ms | 75kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.42ms | 29kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.27ms | 23kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.31ms | 23kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.42ms | 23kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.23ms | 16kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.32ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.43ms | 9.6kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.40ms | 8.8kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 13.26ms | 7.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.77ms | 6.8kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.22ms | 4.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.61ms | 4.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.04ms | 3.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.31ms | 2.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 39.69ms | 2.5kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 100.50ms | 990ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 140.26ms | 700ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 150.78ms | 650ps |
