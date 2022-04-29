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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 8.14ms | 12kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 9.06ms | 11kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 9.39ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.80ms | 9.2kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 10.99ms | 8.9kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.24ms | 8.1kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 12.91ms | 7.6kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.49ms | 7.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.51ms | 7.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.31ms | 5.4kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.94ms | 4.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 30.25ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 42.74ms | 2.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 57.37ms | 1.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.12ms | 1.6kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 84.22ms | 1.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 96.27ms | 1.0kps |
