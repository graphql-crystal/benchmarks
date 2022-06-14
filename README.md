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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.01ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10.01ms | 9.7kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.53ms | 9.3kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.57ms | 8.5kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 11.83ms | 8.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.92ms | 8.3kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.83ms | 7.1kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.33ms | 6.5kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 15.93ms | 6.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.65ms | 5.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 24.50ms | 4.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 30.51ms | 3.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 38.53ms | 2.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.21ms | 2.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 55.63ms | 1.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 67.87ms | 1.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 89.51ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.86ms | 940ps |
