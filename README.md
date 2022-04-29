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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.87ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10.00ms | 9.7kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.20ms | 9.5kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.79ms | 8.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.02ms | 8.2kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.50ms | 7.9kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.32ms | 6.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.28ms | 6.5kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 16.14ms | 6.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 20.12ms | 4.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 25.90ms | 3.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.51ms | 3.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.86ms | 2.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 66.05ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 56.54ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 91.49ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.75ms | 940ps |
