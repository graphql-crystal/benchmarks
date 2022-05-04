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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 13.00ms | 7.6kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 14.41ms | 6.8kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 14.89ms | 6.6kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 17.45ms | 5.6kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 18.24ms | 5.4kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 18.41ms | 5.4kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 19.82ms | 5.0kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 20.71ms | 4.8kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 23.41ms | 4.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 33.19ms | 3.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 37.01ms | 2.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 41.87ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 65.52ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 70.80ms | 1.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 91.73ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 114.30ms | 870ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 130.58ms | 760ps |
