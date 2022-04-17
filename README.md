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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.30ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.43ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.46ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.99ms | 9.0kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 10.87ms | 8.9kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.41ms | 8.6kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 11.84ms | 8.3kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.87ms | 7.1kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.42ms | 6.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.31ms | 5.4kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.11ms | 4.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 29.43ms | 3.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.06ms | 2.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.76ms | 1.6kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 65.30ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 85.68ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 99.94ms | 990ps |
