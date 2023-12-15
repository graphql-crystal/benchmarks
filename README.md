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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.02ms | 66kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.09ms | 65kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.02ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.77ms | 42kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.49ms | 36kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.25ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.24ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.22ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.72ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 17.95ms | 11kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.88ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.66ms | 9.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.73ms | 8.4kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 27.99ms | 7.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.36ms | 5.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.06ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.79ms | 4.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 89.88ms | 2.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 109.49ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 112.21ms | 1.8kps |
