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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.24ms | 80kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.59ms | 39kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.20ms | 31kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.84ms | 26kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.91ms | 26kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.87ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.24ms | 14kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.08ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.32ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.95ms | 7.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.78ms | 6.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 16.79ms | 6.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.71ms | 4.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.76ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.00ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 41.92ms | 2.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 107.27ms | 920ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.89ms | 910ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 110.40ms | 890ps |
