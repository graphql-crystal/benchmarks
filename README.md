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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.31ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.83ms | 9.9kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.93ms | 9.6kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.53ms | 7.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.80ms | 7.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.10ms | 7.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.41ms | 7.3kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.10ms | 6.5kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 15.79ms | 6.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.09ms | 5.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 24.48ms | 4.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 30.05ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.54ms | 2.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 55.70ms | 1.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 71.91ms | 1.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 84.52ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 99.04ms | 1.0kps |
