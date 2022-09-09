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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.22ms | 82kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.53ms | 39kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.39ms | 30kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.74ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.75ms | 27kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.29ms | 16kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.79ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8.69ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.61ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.86ms | 10kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.99ms | 6.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 17.06ms | 5.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.03ms | 4.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.47ms | 3.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.23ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.36ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 106.35ms | 930ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 108.59ms | 910ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 112.05ms | 880ps |
