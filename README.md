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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.86ms | 9.9kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.87ms | 9.7kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10.69ms | 9.0kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.18ms | 8.1kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.53ms | 7.9kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.86ms | 7.6kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.83ms | 7.1kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 16.31ms | 6.0kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 16.88ms | 5.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 22.08ms | 4.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 26.49ms | 3.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.12ms | 3.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 44.19ms | 2.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 50.53ms | 2.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 61.23ms | 1.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 74.41ms | 1.3kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 105.05ms | 940ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 112.97ms | 880ps |
