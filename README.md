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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.52ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.17ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.24ms | 10kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.10ms | 8.9kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.12ms | 8.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.37ms | 8.7kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 12.38ms | 8.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.89ms | 6.6kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.88ms | 6.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.20ms | 6.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.59ms | 4.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 27.43ms | 3.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.34ms | 3.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 40.81ms | 2.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.38ms | 1.6kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 65.52ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 92.39ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 110.31ms | 900ps |
