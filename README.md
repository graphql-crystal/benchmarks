<!-- README.md is generated from README.ecr, do not edit -->

# GraphQL server benchmarks

Graphql server benchmarks in many languages. Pull requests welcome.

All servers implement a simple schema:

```graphql
type Query {
  hello: String!
}
```

The returned string is always `world`.

The API is served over HTTP using a common web server and load tested using [k6](https://github.com/grafana/k6).

### Results

| Name                          | Language      | Server          | Latency avg      | Requests      |
| ----------------------------  | ------------- | --------------- | ---------------- | ------------- |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.32ms | 12kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.11ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.31ms | 10kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.14ms | 8.9kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.21ms | 8.8kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.19ms | 8.7kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.11ms | 7.5kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.72ms | 7.2kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.04ms | 7.0kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.73ms | 5.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.90ms | 4.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 29.62ms | 3.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 43.96ms | 2.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 61.58ms | 1.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 53.90ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 87.77ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 100.92ms | 980ps |
