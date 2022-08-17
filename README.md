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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.11ms | 90kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.16ms | 46kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.95ms | 34kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.31ms | 30kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.41ms | 29kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.76ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.39ms | 16kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.44ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.62ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.59ms | 8.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.42ms | 8.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.88ms | 6.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.85ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 25.26ms | 4.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.83ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 40.00ms | 2.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 84.15ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 101.22ms | 980ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 102.53ms | 960ps |
