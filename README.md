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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.64ms | 61kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.85ms | 26kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 5.55ms | 18kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 6.41ms | 16kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 6.99ms | 14kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 11.78ms | 8.5kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 12.43ms | 8.0kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 13.42ms | 7.4kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.72ms | 7.3kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 14.22ms | 7.0kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 23.24ms | 4.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 26.97ms | 3.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 29.81ms | 3.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 56.84ms | 2.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 51.87ms | 1.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 58.85ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 139.62ms | 710ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 148.08ms | 660ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 156.12ms | 630ps |
