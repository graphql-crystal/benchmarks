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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 14.22ms | 6.9kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 15.46ms | 6.4kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 15.77ms | 6.2kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 16.48ms | 6.0kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 19.73ms | 5.0kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 21.26ms | 4.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 22.78ms | 4.3kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 22.90ms | 4.3kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 23.95ms | 4.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 37.63ms | 2.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 41.91ms | 2.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 44.16ms | 2.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 73.98ms | 1.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 76.70ms | 1.1kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 123.01ms | 810ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 128.42ms | 770ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 149.32ms | 660ps |
