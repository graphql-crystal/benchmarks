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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 13.23ms | 7.4kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 15.04ms | 6.5kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 15.26ms | 6.5kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 16.16ms | 6.1kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 19.05ms | 5.1kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 19.64ms | 5.0kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 20.22ms | 4.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 21.35ms | 4.6kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 23.15ms | 4.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 32.30ms | 3.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 39.61ms | 2.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 43.46ms | 2.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 65.22ms | 1.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 72.85ms | 1.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 98.83ms | 1,000ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 119.99ms | 830ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 134.41ms | 740ps |
