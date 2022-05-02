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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 13.58ms | 7.2kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 15.05ms | 6.5kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 16.09ms | 6.1kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 17.95ms | 5.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 18.83ms | 5.2kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 19.34ms | 5.1kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 20.21ms | 4.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 21.63ms | 4.6kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 25.80ms | 3.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 34.97ms | 2.8kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 39.61ms | 2.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 43.98ms | 2.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 68.73ms | 1.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 80.06ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 116.77ms | 850ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 125.35ms | 790ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 146.68ms | 670ps |
