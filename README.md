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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.26ms | 12kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.12ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.62ms | 10kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.34ms | 8.7kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.53ms | 8.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.62ms | 8.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 12.30ms | 8.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.46ms | 6.8kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 15.47ms | 6.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.79ms | 5.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.71ms | 4.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.35ms | 3.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 37.36ms | 2.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.26ms | 2.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 60.51ms | 1.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 54.26ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 106.30ms | 930ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 106.99ms | 930ps |
