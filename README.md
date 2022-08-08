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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.49ms | 40kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.35ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.78ms | 26kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.92ms | 25kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.49ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.02ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.42ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.53ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.49ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.29ms | 6.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.08ms | 5.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.90ms | 4.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.54ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.14ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.75ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 102.82ms | 960ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 108.75ms | 910ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.69ms | 880ps |
