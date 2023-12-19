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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.82ms | 110kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.81ms | 71kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.90ms | 69kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.28ms | 47kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.85ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.04ms | 40kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.06ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.75ms | 21kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.97ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.72ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.51ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.58ms | 12kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.57ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 23.22ms | 8.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.57ms | 8.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 30.67ms | 6.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 41.72ms | 6.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.68ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 50.06ms | 4.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 88.71ms | 2.3kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 107.76ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 107.68ms | 1.8kps |
