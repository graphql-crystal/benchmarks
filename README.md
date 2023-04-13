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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.98ms | 50kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.04ms | 25kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.86ms | 15kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.37ms | 14kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 7.57ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.18ms | 9.8kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 12.97ms | 7.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.46ms | 6.9kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.68ms | 6.8kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 18.67ms | 5.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 25.62ms | 3.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 26.98ms | 3.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.08ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 55.67ms | 2.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 50.49ms | 2.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 66.65ms | 1.5kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 126.23ms | 780ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 126.85ms | 780ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 180.79ms | 550ps |
