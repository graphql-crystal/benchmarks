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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.05ms | 11kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.12ms | 9.5kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 11.15ms | 8.7kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.97ms | 8.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.74ms | 7.7kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.98ms | 7.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.21ms | 7.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.66ms | 6.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 17.09ms | 5.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 22.21ms | 4.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 27.75ms | 3.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 33.22ms | 3.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 50.23ms | 2.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 62.48ms | 1.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 80.40ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 99.50ms | 1,000ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 117.77ms | 840ps |
