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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.39ms | 72kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.72ms | 37kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.69ms | 27kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.94ms | 25kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.53ms | 22kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.90ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.12ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.78ms | 10kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.38ms | 9.6kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 14.82ms | 6.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.15ms | 6.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.21ms | 4.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.68ms | 4.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.54ms | 2.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.47ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 42.00ms | 2.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 102.80ms | 960ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.45ms | 960ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 150.40ms | 650ps |
