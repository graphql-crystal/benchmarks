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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.20ms | 83kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.45ms | 41kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.21ms | 31kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.25ms | 31kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.69ms | 27kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.84ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.67ms | 15kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.38ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.95ms | 10kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.80ms | 8.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.33ms | 7.0kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 15.51ms | 6.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.49ms | 5.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.34ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.95ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 39.41ms | 2.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 94.06ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 95.14ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 123.62ms | 800ps |
