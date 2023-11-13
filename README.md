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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.57ms | 63kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.50ms | 29kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.82ms | 26kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.26ms | 23kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.35ms | 23kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.49ms | 22kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.03ms | 11kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.44ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.49ms | 8.7kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.06ms | 8.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.57ms | 7.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.72ms | 6.0kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 18.92ms | 5.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 26.52ms | 3.8kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 28.67ms | 3.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 41.72ms | 2.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 54.61ms | 2.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 51.60ms | 1.9kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.96ms | 950ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 106.92ms | 920ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 196.23ms | 500ps |
