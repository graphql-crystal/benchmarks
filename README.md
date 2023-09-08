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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.38ms | 72kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.40ms | 29kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.48ms | 29kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.77ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.20ms | 24kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.33ms | 14kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.92ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.87ms | 10kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.85ms | 9.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.48ms | 6.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 17.90ms | 5.6kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 18.04ms | 5.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.81ms | 4.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.44ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.03ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 43.25ms | 2.3kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 97.13ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 99.82ms | 990ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 144.32ms | 680ps |
