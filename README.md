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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.22ms | 81kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.23ms | 45kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.03ms | 33kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.16ms | 32kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.23ms | 31kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.76ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.73ms | 15kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8.06ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.10ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.49ms | 8.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.68ms | 7.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.97ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.11ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.37ms | 3.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 40.88ms | 2.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 100.46ms | 980ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 101.92ms | 970ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 114.36ms | 860ps |
