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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 10.58ms | 9.2kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 12.23ms | 8.0kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 12.36ms | 7.9kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 14.13ms | 7.0kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 14.60ms | 6.7kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 17.19ms | 5.7kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 18.51ms | 5.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 18.51ms | 5.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 19.24ms | 5.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 24.54ms | 4.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 32.07ms | 3.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 36.67ms | 2.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 56.41ms | 1.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 67.59ms | 1.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 89.75ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 107.05ms | 930ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 125.23ms | 790ps |
