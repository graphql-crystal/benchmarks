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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.27ms | 79kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.46ms | 41kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.47ms | 29kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.87ms | 26kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.88ms | 26kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.34ms | 16kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.79ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.45ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.77ms | 10kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.63ms | 7.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.02ms | 6.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.34ms | 5.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.33ms | 4.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.33ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.87ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.88ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 105.64ms | 940ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 107.13ms | 920ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 107.62ms | 920ps |
