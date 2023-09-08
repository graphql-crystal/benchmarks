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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.53ms | 39kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 6.29ms | 16kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.52ms | 15kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.29ms | 14kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.04ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.11ms | 8.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.95ms | 7.2kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.73ms | 6.8kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.63ms | 6.4kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 27.82ms | 3.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 28.70ms | 3.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 31.07ms | 3.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 35.34ms | 2.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 64.05ms | 2.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 54.67ms | 1.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 62.49ms | 1.6kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 150.98ms | 650ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 152.58ms | 650ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 246.26ms | 400ps |
