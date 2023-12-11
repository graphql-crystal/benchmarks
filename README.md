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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.95ms | 100kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.98ms | 67kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.99ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.03ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.07ms | 39kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.40ms | 37kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.44ms | 21kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.98ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.93ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.90ms | 14kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.17ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.33ms | 9.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 22.81ms | 8.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.42ms | 8.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 29.57ms | 6.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.95ms | 5.7kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.37ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.71ms | 4.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 92.89ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 109.33ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 109.64ms | 1.8kps |
