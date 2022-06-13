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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.40ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.05ms | 11kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.97ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.09ms | 8.9kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.55ms | 8.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.75ms | 8.4kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 12.51ms | 7.9kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.20ms | 7.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.32ms | 6.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.61ms | 5.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.19ms | 4.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 30.14ms | 3.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 36.23ms | 2.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.11ms | 2.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 61.91ms | 1.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 53.74ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 88.58ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 102.79ms | 970ps |
