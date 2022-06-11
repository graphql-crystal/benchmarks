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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 10.39ms | 9.4kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 11.26ms | 8.5kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 11.46ms | 8.4kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 14.42ms | 6.8kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 14.52ms | 6.8kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 14.88ms | 6.6kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 16.15ms | 6.1kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 17.70ms | 5.6kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 18.37ms | 5.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 21.31ms | 4.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 27.73ms | 3.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.86ms | 3.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 42.84ms | 2.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 52.20ms | 1.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 59.81ms | 1.4kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 82.03ms | 1.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 93.38ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.11ms | 890ps |
