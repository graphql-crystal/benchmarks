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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.52ms | 66kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.10ms | 32kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.21ms | 24kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.89ms | 20kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.89ms | 20kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.92ms | 11kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.54ms | 10kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.03ms | 8.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.55ms | 7.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.20ms | 5.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 19.60ms | 5.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.87ms | 4.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 28.23ms | 3.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 40.43ms | 2.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.42ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 55.85ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 120.49ms | 820ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 120.59ms | 820ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 183.79ms | 530ps |
