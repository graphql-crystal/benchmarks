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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.59ms | 63kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.76ms | 36kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.63ms | 28kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.71ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.76ms | 27kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 6.71ms | 15kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.31ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.07ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.22ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.42ms | 9.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.22ms | 7.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.83ms | 5.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 21.01ms | 4.8kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 27.41ms | 3.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.06ms | 2.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 37.03ms | 2.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.27ms | 910ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 110.19ms | 900ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 115.97ms | 850ps |
