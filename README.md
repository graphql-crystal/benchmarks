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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.08ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.72ms | 9.8kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.18ms | 9.5kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.86ms | 8.3kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.51ms | 7.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.70ms | 7.8kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.25ms | 6.9kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 15.08ms | 6.5kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.19ms | 6.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.70ms | 5.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.34ms | 4.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.50ms | 3.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 37.43ms | 2.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.75ms | 2.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 66.27ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 62.94ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 89.59ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.09ms | 960ps |
