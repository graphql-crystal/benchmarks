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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.77ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.68ms | 9.9kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.69ms | 9.9kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.62ms | 8.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.87ms | 8.3kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.15ms | 8.1kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.54ms | 7.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.30ms | 6.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.64ms | 6.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.82ms | 5.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.92ms | 4.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 30.45ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.32ms | 2.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 69.57ms | 1.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 63.51ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 90.46ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.20ms | 940ps |
