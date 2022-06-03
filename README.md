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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 14.65ms | 6.7kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 15.62ms | 6.3kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 15.90ms | 6.2kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 18.03ms | 5.5kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 20.08ms | 4.9kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 21.96ms | 4.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 22.90ms | 4.3kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 23.06ms | 4.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 26.48ms | 3.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 36.33ms | 2.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 45.03ms | 2.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 47.31ms | 2.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 60.50ms | 1.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 71.17ms | 1.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 79.40ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 128.75ms | 770ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 128.99ms | 770ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 150.42ms | 660ps |
