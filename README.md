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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.20ms | 45kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.69ms | 21kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.14ms | 16kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.70ms | 13kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 7.85ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.90ms | 9.1kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 12.93ms | 7.7kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.41ms | 6.5kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.51ms | 6.4kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 27.66ms | 3.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 33.49ms | 3.0kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 36.32ms | 2.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 59.70ms | 2.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 51.83ms | 1.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 61.03ms | 1.6kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 152.67ms | 640ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 153.82ms | 640ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 232.47ms | 420ps |
