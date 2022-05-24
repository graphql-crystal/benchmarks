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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.34ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 8.55ms | 11kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.04ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.16ms | 9.7kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 10.59ms | 9.2kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.78ms | 9.1kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 11.58ms | 8.5kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 12.82ms | 7.7kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.88ms | 7.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.84ms | 6.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.04ms | 4.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 29.02ms | 3.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.49ms | 3.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 41.28ms | 2.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 55.45ms | 1.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 50.69ms | 1.6kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 83.91ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 93.42ms | 1.1kps |
