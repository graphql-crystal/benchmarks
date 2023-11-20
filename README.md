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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.91ms | 100kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.85ms | 70kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.98ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.97ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.81ms | 42kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.36ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.41ms | 24kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.84ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.05ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 14.85ms | 13kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.87ms | 13kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 19.47ms | 10kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.43ms | 8.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.04ms | 8.7kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.04ms | 7.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.23ms | 5.8kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.55ms | 5.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.41ms | 4.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 90.22ms | 2.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 108.18ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.44ms | 1.8kps |
