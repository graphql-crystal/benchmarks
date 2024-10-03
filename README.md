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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.84ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.96ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.71ms | 54kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.43ms | 45kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.28ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.89ms | 26kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.50ms | 24kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.86ms | 20kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.82ms | 19kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 10.87ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.49ms | 15kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.97ms | 11kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.51ms | 8.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 25.82ms | 7.7kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.46ms | 6.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.47ms | 5.6kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 52.89ms | 3.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 54.79ms | 3.6kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 97.27ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 116.15ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 116.57ms | 1.7kps |
