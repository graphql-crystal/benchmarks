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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.14ms | 11kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.35ms | 9.4kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10.65ms | 9.1kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.57ms | 7.9kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.76ms | 7.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.52ms | 7.3kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.55ms | 7.3kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.45ms | 6.4kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 15.80ms | 6.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 20.40ms | 4.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 27.49ms | 3.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 33.60ms | 3.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 41.08ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 51.19ms | 1.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 59.31ms | 1.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 74.64ms | 1.3kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 100.31ms | 990ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 114.84ms | 860ps |
