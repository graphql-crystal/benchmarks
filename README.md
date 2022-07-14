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

The API is served over HTTP using a common web server and load tested using [bombardier](https://github.com/codesenberg/bombardier).

### Results

| Name                          | Language      | Server          | Latency avg      | Requests      |
| ----------------------------  | ------------- | --------------- | ---------------- | ------------- |
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.38ms | 72kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.57ms | 39kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.40ms | 29kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.88ms | 26kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.15ms | 24kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.90ms | 14kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.41ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.76ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.16ms | 9.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.06ms | 7.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 17.43ms | 5.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 23.06ms | 4.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.95ms | 4.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.97ms | 2.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 50.80ms | 2.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 45.11ms | 2.2kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 108.31ms | 910ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 114.95ms | 860ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 115.88ms | 850ps |
