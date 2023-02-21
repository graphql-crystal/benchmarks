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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.34ms | 75kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.08ms | 32kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.58ms | 28kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.05ms | 25kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.43ms | 23kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.75ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.64ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.96ms | 10kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.95ms | 9.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 14.49ms | 6.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.09ms | 6.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.36ms | 4.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.22ms | 4.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.21ms | 3.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.62ms | 2.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 41.95ms | 2.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 99.42ms | 1,000ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 99.90ms | 990ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 137.47ms | 720ps |
