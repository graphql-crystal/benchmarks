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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.31ms | 43kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.36ms | 23kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.11ms | 16kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.57ms | 13kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.02ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.59ms | 8.6kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 14.95ms | 6.7kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.76ms | 6.3kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.87ms | 6.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 27.94ms | 3.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 28.95ms | 3.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 32.26ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 57.70ms | 2.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 53.88ms | 1.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 65.08ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 149.13ms | 660ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 153.43ms | 640ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 207.41ms | 470ps |
