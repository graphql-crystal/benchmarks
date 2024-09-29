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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.80ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.96ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.67ms | 54kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.48ms | 45kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.06ms | 39kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.01ms | 25kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.31ms | 24kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.76ms | 20kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.14ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.97ms | 15kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.25ms | 15kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.84ms | 9.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.11ms | 8.7kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 27.02ms | 7.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.35ms | 6.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.58ms | 5.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.28ms | 4.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 55.79ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 95.24ms | 2.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 116.93ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 119.40ms | 1.7kps |
