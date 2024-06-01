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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.85ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.14ms | 64kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.99ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.46ms | 45kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.03ms | 40kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.99ms | 25kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.14ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.82ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 10.94ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.02ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.31ms | 12kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.73ms | 8.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.43ms | 8.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.33ms | 7.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.69ms | 6.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.02ms | 6.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.30ms | 4.3kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 54.52ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 96.94ms | 2.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.76ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 118.86ms | 1.7kps |
