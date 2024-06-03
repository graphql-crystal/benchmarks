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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.88ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.34ms | 60kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.37ms | 46kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.79ms | 42kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.43ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.94ms | 20kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.73ms | 19kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.45ms | 17kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 12.40ms | 16kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.01ms | 15kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.08ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.31ms | 9.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 25.47ms | 7.8kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.89ms | 7.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.25ms | 5.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 48.30ms | 5.3kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 57.11ms | 3.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 57.00ms | 3.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 112.40ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 128.63ms | 1.5kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 132.70ms | 1.5kps |
