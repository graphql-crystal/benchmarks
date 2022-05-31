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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 10.55ms | 9.3kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 11.31ms | 8.6kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 11.67ms | 8.4kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 14.38ms | 6.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 14.55ms | 6.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 15.21ms | 6.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 16.02ms | 6.2kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 18.07ms | 5.5kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 19.99ms | 4.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 28.35ms | 3.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 30.34ms | 3.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 38.64ms | 2.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 47.59ms | 2.1kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 58.57ms | 1.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 67.91ms | 1.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 89.19ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 109.70ms | 900ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 129.19ms | 770ps |
