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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 13.30ms | 7.4kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 14.79ms | 6.6kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 15.02ms | 6.6kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 16.59ms | 5.9kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 18.30ms | 5.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 18.81ms | 5.2kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 20.11ms | 4.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 20.61ms | 4.8kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 23.92ms | 4.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 33.59ms | 2.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 39.31ms | 2.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 44.01ms | 2.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 56.72ms | 1.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 65.91ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 73.26ms | 1.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 102.17ms | 970ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 120.04ms | 820ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 142.67ms | 690ps |
