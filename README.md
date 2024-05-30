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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.75ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.09ms | 65kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.20ms | 48kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.38ms | 46kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.26ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.62ms | 23kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.06ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.07ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.15ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.11ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 17.05ms | 12kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.59ms | 9.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.45ms | 8.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 27.54ms | 7.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.41ms | 6.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.13ms | 5.7kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.46ms | 4.2kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 55.04ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 99.01ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 111.84ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 114.37ms | 1.7kps |
