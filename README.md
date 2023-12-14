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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.93ms | 68kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.04ms | 66kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.98ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.00ms | 40kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.37ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.13ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.91ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.98ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.98ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 19.07ms | 10kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.84ms | 8.7kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 22.90ms | 8.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.34ms | 8.6kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 30.63ms | 6.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.98ms | 5.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.89ms | 5.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.90ms | 4.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 90.17ms | 2.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.95ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 110.99ms | 1.8kps |
