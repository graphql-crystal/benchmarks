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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 7.66ms | 13kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.56ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 8.98ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.86ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.08ms | 9.8kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 10.20ms | 9.6kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 11.08ms | 8.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.26ms | 7.5kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.89ms | 7.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.69ms | 6.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.10ms | 5.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 26.11ms | 3.8kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 29.81ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 39.22ms | 2.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 48.73ms | 1.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 59.47ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 86.56ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 102.71ms | 970ps |
