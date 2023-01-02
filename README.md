<!-- README.md is generated from README.ecr, do not edit -->

# GraphQL server benchmarks

Graphql server benchmarks in many languages. Pull requests welcome, please read [CONTRIBUTING.md](CONTRIBUTING.md)

All servers implement a simple schema:

```graphql
type Query {
  hello: String!
}
```

The returned string is always `world`.

The API is served over HTTP using a common web server and load tested using [bombardier](https://github.com/codesenberg/bombardier).

### Results

| Name                          | Language      | Server          | Latency avg      | Requests      |
| ----------------------------  | ------------- | --------------- | ---------------- | ------------- |
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.43ms | 70kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.15ms | 32kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.32ms | 30kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.73ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.88ms | 26kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.36ms | 16kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.01ms | 11kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.27ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.18ms | 9.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.37ms | 6.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 17.32ms | 5.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.29ms | 4.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.18ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.67ms | 2.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 40.50ms | 2.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 105.92ms | 930ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 107.55ms | 920ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 134.76ms | 730ps |
