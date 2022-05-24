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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.38ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.47ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.51ms | 10kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.45ms | 8.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.62ms | 8.5kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.70ms | 8.4kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.14ms | 7.5kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.88ms | 7.1kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 15.17ms | 6.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 17.85ms | 5.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.73ms | 4.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 29.40ms | 3.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 36.46ms | 2.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 44.85ms | 2.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 63.53ms | 1.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 61.08ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 86.21ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 100.05ms | 990ps |
