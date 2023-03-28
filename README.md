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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.25ms | 80kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.43ms | 41kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.29ms | 30kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.41ms | 29kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.76ms | 27kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 6.07ms | 16kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.80ms | 15kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.47ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.93ms | 9.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.09ms | 8.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.20ms | 7.0kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 15.77ms | 6.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.68ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 25.63ms | 3.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.34ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 39.93ms | 2.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 96.31ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 97.61ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 128.46ms | 770ps |
