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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.16ms | 63kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.70ms | 54kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.52ms | 44kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.19ms | 39kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.45ms | 27kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.41ms | 24kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.84ms | 20kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 10.68ms | 19kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.07ms | 15kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.25ms | 15kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.94ms | 8.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.91ms | 8.7kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.03ms | 7.7kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.97ms | 6.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.29ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.45ms | 4.3kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 54.85ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 97.25ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.34ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 117.46ms | 1.7kps |
