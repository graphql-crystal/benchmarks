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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.17ms | 63kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.00ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.51ms | 44kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.21ms | 39kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.35ms | 24kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.05ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.79ms | 19kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.43ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.89ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.50ms | 12kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.74ms | 8.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.95ms | 8.0kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.15ms | 7.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.08ms | 6.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.67ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 48.21ms | 4.1kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 55.50ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 97.44ms | 2.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 113.35ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 119.06ms | 1.7kps |
