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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.84ms | 9.9kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 11.37ms | 8.6kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 11.66ms | 8.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 13.76ms | 7.2kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 14.10ms | 7.0kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.54ms | 6.3kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 17.49ms | 5.6kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 17.86ms | 5.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 20.38ms | 4.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 23.19ms | 4.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 32.32ms | 3.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 35.88ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 55.70ms | 1.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 64.61ms | 1.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 80.35ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 107.05ms | 920ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 121.89ms | 810ps |
