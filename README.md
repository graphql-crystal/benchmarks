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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.33ms | 75kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.76ms | 36kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.46ms | 29kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.40ms | 23kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.52ms | 22kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.63ms | 13kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.41ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.24ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.75ms | 9.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 17.60ms | 5.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.00ms | 5.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.60ms | 4.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 37.76ms | 2.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 51.63ms | 2.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 49.74ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 114.84ms | 860ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 116.98ms | 840ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 135.58ms | 730ps |
