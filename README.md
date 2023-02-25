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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.41ms | 70kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.12ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.01ms | 25kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.16ms | 24kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.44ms | 23kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.29ms | 14kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.60ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.76ms | 9.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.20ms | 8.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 15.30ms | 6.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.82ms | 6.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.66ms | 5.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.37ms | 4.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.84ms | 2.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 47.71ms | 2.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 50.14ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 102.08ms | 970ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 104.97ms | 940ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 153.38ms | 640ps |
