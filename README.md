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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.83ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.99ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.66ms | 55kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.35ms | 46kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.16ms | 39kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.81ms | 25kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.26ms | 24kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.11ms | 20kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.70ms | 19kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.08ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.88ms | 14kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.63ms | 11kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.86ms | 8.8kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.68ms | 7.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.50ms | 6.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.14ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.30ms | 4.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 53.59ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 94.71ms | 2.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 115.79ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.94ms | 1.7kps |
