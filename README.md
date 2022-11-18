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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.12ms | 89kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.23ms | 45kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 2.89ms | 35kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.26ms | 31kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.47ms | 29kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 5.66ms | 18kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.87ms | 17kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.73ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.21ms | 8.2kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.54ms | 7.9kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 16.03ms | 6.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.89ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.82ms | 4.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.30ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.69ms | 3.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 95.58ms | 1.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 103.45ms | 960ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 106.32ms | 930ps |
