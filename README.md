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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.43ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.34ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.48ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.45ms | 8.6kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.62ms | 8.4kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.98ms | 8.2kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 12.94ms | 7.6kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.51ms | 6.8kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.82ms | 6.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.51ms | 5.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 24.35ms | 4.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.92ms | 3.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 37.58ms | 2.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.42ms | 2.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 55.74ms | 1.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 66.28ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 90.67ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.80ms | 940ps |
