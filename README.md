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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 10.35ms | 9.4kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 12.03ms | 8.2kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 12.54ms | 7.9kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 14.72ms | 6.7kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 15.24ms | 6.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 16.70ms | 5.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 18.26ms | 5.4kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 20.37ms | 4.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 24.91ms | 4.0kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 25.06ms | 4.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 32.08ms | 3.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 38.22ms | 2.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 49.44ms | 2.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 63.35ms | 1.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 65.99ms | 1.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 90.18ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.32ms | 860ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 125.50ms | 790ps |
