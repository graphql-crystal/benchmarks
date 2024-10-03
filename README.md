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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.87ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.94ms | 68kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.73ms | 54kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.51ms | 44kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.20ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.02ms | 25kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.57ms | 23kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.98ms | 20kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.44ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.30ms | 16kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.21ms | 14kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.04ms | 8.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.81ms | 8.4kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 27.44ms | 7.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.69ms | 6.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.06ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.89ms | 4.2kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 54.58ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 94.52ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.72ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 119.25ms | 1.7kps |
