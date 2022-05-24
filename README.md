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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 7.32ms | 13kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.26ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 8.36ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.74ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.83ms | 10kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 9.94ms | 9.9kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.39ms | 9.5kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.70ms | 7.8kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.18ms | 7.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.75ms | 6.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.63ms | 5.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 25.98ms | 3.8kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 29.02ms | 3.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 37.18ms | 2.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 51.48ms | 1.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 47.30ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 85.42ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 101.11ms | 980ps |
