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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.17ms | 86kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.24ms | 45kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.06ms | 33kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.41ms | 29kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.66ms | 27kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.97ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.58ms | 15kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.90ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.26ms | 9.7kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 11.43ms | 8.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.48ms | 8.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.91ms | 7.2kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.85ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 23.38ms | 4.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.12ms | 3.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.69ms | 3.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 94.87ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 96.91ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 118.62ms | 830ps |
