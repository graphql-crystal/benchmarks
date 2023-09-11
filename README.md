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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.46ms | 69kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.86ms | 35kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.49ms | 29kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.70ms | 27kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.72ms | 27kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.69ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.00ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8.43ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.18ms | 9.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.55ms | 6.4kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 16.64ms | 6.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.10ms | 5.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.25ms | 4.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.50ms | 3.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.65ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 48.95ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 97.85ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 98.74ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 131.74ms | 740ps |
