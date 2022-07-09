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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 7.20ms | 14kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.93ms | 12kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.10ms | 12kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 9.63ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.85ms | 10kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.41ms | 9.5kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.59ms | 7.9kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.33ms | 7.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.91ms | 6.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 15.63ms | 6.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.85ms | 5.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.78ms | 4.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 27.95ms | 3.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 37.44ms | 2.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 51.50ms | 1.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.39ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 101.60ms | 980ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 102.49ms | 970ps |
