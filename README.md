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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.59ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.43ms | 9.3kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10.77ms | 9.0kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.58ms | 7.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.82ms | 7.7kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 13.15ms | 7.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.80ms | 7.1kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.94ms | 6.2kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 16.93ms | 5.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.59ms | 5.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 25.24ms | 3.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.38ms | 3.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 39.78ms | 2.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.97ms | 2.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 58.11ms | 1.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 72.26ms | 1.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 91.61ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 107.97ms | 920ps |
