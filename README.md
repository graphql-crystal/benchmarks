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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.18ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.57ms | 10.0kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.50ms | 9.2kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.12ms | 8.1kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.77ms | 7.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.19ms | 7.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.65ms | 6.7kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.77ms | 6.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 15.75ms | 6.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.18ms | 5.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 26.53ms | 3.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.84ms | 3.1kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.45ms | 2.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 69.27ms | 1.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 59.65ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 91.06ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 106.09ms | 930ps |
