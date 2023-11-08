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
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.15ms | 24kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.16ms | 24kps |
| [static-rust](https://actix.rs/) | Rust | Actix Web | 4.32ms | 23kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.63ms | 22kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.11ms | 7.6kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.39ms | 7.5kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.04ms | 7.1kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 15.48ms | 6.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 22.10ms | 4.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 23.19ms | 4.3kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 24.13ms | 4.2kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 25.17ms | 4.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.79ms | 3.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 32.50ms | 3.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 48.11ms | 2.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 62.24ms | 2.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 56.58ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.07ms | 860ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 120.33ms | 820ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 206.37ms | 480ps |
