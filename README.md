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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.29ms | 11kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10.02ms | 9.7kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.20ms | 9.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 11.87ms | 8.3kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 12.53ms | 7.8kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.60ms | 6.8kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.85ms | 6.2kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 16.73ms | 5.9kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 17.59ms | 5.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.01ms | 5.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 24.26ms | 4.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.50ms | 3.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 39.14ms | 2.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.77ms | 2.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 65.09ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 56.84ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 91.41ms | 1.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 104.89ms | 950ps |
