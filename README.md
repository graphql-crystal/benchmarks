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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 7.26ms | 14kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.37ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 8.49ms | 11kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 9.68ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.86ms | 10kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.38ms | 9.5kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.88ms | 7.7kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.19ms | 7.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.36ms | 6.4kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 18.07ms | 5.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.07ms | 4.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 25.54ms | 3.9kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 29.10ms | 3.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 37.13ms | 2.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 53.93ms | 1.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 48.46ms | 1.6kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 86.03ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 100.58ms | 990ps |
