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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 7.44ms | 13kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.14ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 8.39ms | 11kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 10.03ms | 9.7kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.27ms | 9.6kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 11.00ms | 9.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.20ms | 7.5kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.30ms | 7.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.66ms | 6.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.75ms | 5.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.36ms | 4.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 25.91ms | 3.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 37.19ms | 2.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 52.06ms | 1.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 47.96ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 85.43ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 101.31ms | 980ps |
