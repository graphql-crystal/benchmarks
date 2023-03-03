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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.26ms | 80kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.42ms | 41kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.12ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.30ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.77ms | 26kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.61ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 6.82ms | 15kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.43ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.49ms | 10kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.06ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 12.98ms | 7.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.33ms | 7.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.79ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.83ms | 4.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.92ms | 3.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 33.59ms | 3.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 98.27ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 98.93ms | 1,000ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 121.04ms | 810ps |
