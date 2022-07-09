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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 15.21ms | 6.5kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 16.90ms | 5.8kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 17.08ms | 5.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 18.50ms | 5.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 21.04ms | 4.7kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 21.18ms | 4.7kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 23.43ms | 4.2kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 23.86ms | 4.1kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 27.39ms | 3.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 40.17ms | 2.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 46.76ms | 2.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 48.54ms | 2.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 65.97ms | 1.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 72.91ms | 1.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 77.76ms | 1.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 133.27ms | 740ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 154.82ms | 640ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 157.13ms | 630ps |
