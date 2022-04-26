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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.72ms | 11kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.53ms | 10kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.50ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.49ms | 8.6kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.53ms | 8.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.73ms | 8.4kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.63ms | 7.2kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.39ms | 6.9kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.39ms | 6.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.86ms | 5.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.62ms | 4.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 30.02ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 44.98ms | 2.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 65.12ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 55.31ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 89.77ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.59ms | 960ps |
