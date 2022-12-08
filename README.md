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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.84ms | 54kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.36ms | 30kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.34ms | 23kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.35ms | 23kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.50ms | 22kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.69ms | 12kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.13ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.13ms | 9.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.51ms | 8.0kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.99ms | 5.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.78ms | 4.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 27.38ms | 3.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.45ms | 2.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 41.13ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 60.82ms | 1.6kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 128.67ms | 770ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 134.86ms | 730ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 180.80ms | 550ps |
