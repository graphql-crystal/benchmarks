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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.81ms | 55kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.89ms | 26kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.44ms | 16kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 6.89ms | 15kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 7.14ms | 14kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 12.66ms | 7.9kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 13.65ms | 7.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 14.41ms | 7.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.24ms | 6.6kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.43ms | 6.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 30.53ms | 3.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 30.71ms | 3.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.62ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 63.41ms | 2.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 55.65ms | 1.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 71.56ms | 1.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 144.91ms | 680ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 149.27ms | 660ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 201.83ms | 480ps |
