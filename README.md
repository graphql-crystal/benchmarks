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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 9.81ms | 10kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10.74ms | 9.1kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10.62ms | 9.1kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.42ms | 7.9kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 13.08ms | 7.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.23ms | 7.5kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.23ms | 6.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 16.24ms | 6.1kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 16.59ms | 5.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.63ms | 5.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 25.59ms | 3.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.64ms | 3.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 40.12ms | 2.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 48.86ms | 2.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 56.99ms | 1.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 75.29ms | 1.3kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.91ms | 880ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 113.22ms | 880ps |
