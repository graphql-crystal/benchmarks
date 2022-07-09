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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 7.30ms | 13kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.21ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 8.37ms | 12kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.18ms | 9.7kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 10.11ms | 9.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.62ms | 9.3kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 11.01ms | 9.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.89ms | 7.7kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.92ms | 7.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.65ms | 6.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.31ms | 4.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 25.59ms | 3.9kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 30.29ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 37.91ms | 2.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 47.28ms | 1.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 59.73ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 103.64ms | 960ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.81ms | 940ps |
