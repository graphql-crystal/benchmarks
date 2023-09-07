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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.33ms | 43kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.22ms | 24kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.35ms | 16kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.75ms | 13kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.22ms | 12kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.05ms | 7.7kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.22ms | 6.6kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.87ms | 6.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.99ms | 5.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 27.02ms | 3.7kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 32.71ms | 3.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 34.41ms | 2.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 36.73ms | 2.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 63.72ms | 2.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 55.41ms | 1.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 64.48ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 150.11ms | 660ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 155.32ms | 630ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 238.58ms | 410ps |
