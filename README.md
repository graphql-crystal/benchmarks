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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.22ms | 82kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.52ms | 40kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.17ms | 31kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.19ms | 31kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.28ms | 30kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.93ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.78ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 7.93ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.31ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.71ms | 8.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.93ms | 7.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.40ms | 5.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.18ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.52ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 40.82ms | 2.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 102.93ms | 960ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.09ms | 960ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 119.74ms | 820ps |
