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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.18ms | 46kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.07ms | 25kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.15ms | 16kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 7.12ms | 14kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.36ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.41ms | 8.8kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 12.52ms | 8.0kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.70ms | 6.4kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.98ms | 6.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 27.40ms | 3.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 28.56ms | 3.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 33.64ms | 3.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 57.43ms | 2.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 51.64ms | 1.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 59.49ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 145.84ms | 670ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 151.66ms | 650ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 216.04ms | 450ps |
