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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.98ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.71ms | 54kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.60ms | 43kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.26ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.19ms | 24kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.47ms | 24kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.93ms | 20kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.23ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.68ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.54ms | 15kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.84ms | 11kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.42ms | 8.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.62ms | 7.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.24ms | 6.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.15ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 48.70ms | 4.1kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 52.88ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 93.92ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.49ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 117.53ms | 1.7kps |
