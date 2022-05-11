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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.63ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.53ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.72ms | 10.0kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.41ms | 8.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.78ms | 8.4kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.70ms | 8.4kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.02ms | 7.6kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.67ms | 6.7kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.89ms | 6.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.53ms | 5.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.14ms | 4.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.13ms | 3.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 37.22ms | 2.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 48.65ms | 2.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 60.13ms | 1.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 55.78ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 89.38ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 102.31ms | 970ps |
