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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 0 ms | 7.2k/s |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 0 ms | 7.1k/s |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 0 ms | 7.0k/s |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 0 ms | 6.5k/s |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 0 ms | 5.7k/s |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 0 ms | 5.5k/s |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 0 ms | 5.2k/s |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 0 ms | 4.7k/s |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 0 ms | 4.6k/s |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 0 ms | 3.1k/s |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 0 ms | 2.8k/s |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 0 ms | 2.5k/s |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 100 ms | 1.7k/s |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 100 ms | 1.3k/s |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 100 ms | 1.1k/s |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 0 ms | 840/s |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 0 ms | 760/s |
