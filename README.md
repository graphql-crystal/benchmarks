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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.19ms | 84kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.19ms | 46kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.91ms | 34kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.05ms | 33kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.18ms | 31kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.70ms | 18kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.94ms | 14kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.70ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.19ms | 9.0kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.47ms | 8.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.96ms | 7.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.69ms | 5.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.07ms | 4.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.94ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 33.81ms | 3.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 90.48ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 102.00ms | 970ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.99ms | 950ps |
