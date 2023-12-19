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
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.86ms | 70kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.15ms | 64kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.34ms | 46kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.82ms | 42kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.34ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.17ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.82ms | 20kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.02ms | 18kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.37ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.03ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.28ms | 12kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.54ms | 9.7kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.89ms | 9.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.84ms | 8.8kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.89ms | 6.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.27ms | 6.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 39.58ms | 5.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.80ms | 4.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 99.78ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.61ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 110.65ms | 1.8kps |
