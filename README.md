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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.24ms | 81kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.20ms | 46kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.88ms | 35kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.19ms | 31kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.22ms | 31kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 6.48ms | 15kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.56ms | 15kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.13ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.37ms | 9.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.65ms | 8.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.90ms | 7.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 19.21ms | 5.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 23.62ms | 4.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.74ms | 3.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 33.35ms | 3.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 87.13ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 104.48ms | 950ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.18ms | 940ps |
