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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.93ms | 100kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.89ms | 69kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.06ms | 66kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.13ms | 48kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.03ms | 40kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.58ms | 36kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.28ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.22ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.67ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.37ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.66ms | 9.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 23.12ms | 8.7kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 23.12ms | 8.6kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 24.05ms | 8.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.81ms | 8.0kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 30.20ms | 6.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.34ms | 5.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 47.19ms | 5.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.25ms | 4.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 94.54ms | 2.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 114.41ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 116.81ms | 1.7kps |
