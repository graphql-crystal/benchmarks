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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.08ms | 65kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.10ms | 49kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.56ms | 44kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.36ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.75ms | 26kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.66ms | 23kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.32ms | 19kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.89ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.86ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.83ms | 14kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.30ms | 10kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.25ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.03ms | 7.7kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.42ms | 6.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 47.13ms | 5.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.60ms | 4.2kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 55.24ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 102.72ms | 1.9kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 122.30ms | 1.6kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 129.60ms | 1.5kps |
