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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 13.64ms | 7.2kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 14.93ms | 6.6kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 14.95ms | 6.6kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 16.32ms | 6.0kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 17.99ms | 5.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 18.51ms | 5.3kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 20.54ms | 4.8kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 21.32ms | 4.6kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 23.96ms | 4.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 34.12ms | 2.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 38.31ms | 2.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 43.84ms | 2.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 64.45ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 71.86ms | 1.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 107.25ms | 920ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 119.32ms | 830ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 137.85ms | 720ps |
