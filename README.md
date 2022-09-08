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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.09ms | 92kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.16ms | 46kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.92ms | 34kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.15ms | 32kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.21ms | 31kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 5.55ms | 18kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.83ms | 17kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.15ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8.53ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.34ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.84ms | 8.4kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.25ms | 7.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.46ms | 5.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 22.98ms | 4.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.88ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.58ms | 3.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 88.48ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 104.90ms | 940ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 106.58ms | 930ps |
