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
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.80ms | 9.9kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.91ms | 9.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.01ms | 9.0kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.30ms | 8.0kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.41ms | 7.9kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.24ms | 6.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 14.79ms | 6.7kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 15.26ms | 6.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.90ms | 5.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 26.77ms | 3.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.35ms | 3.1kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.07ms | 2.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 66.90ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 57.87ms | 1.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 93.65ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 110.30ms | 900ps |
