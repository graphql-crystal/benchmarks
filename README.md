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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.81ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.17ms | 63kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.85ms | 52kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.59ms | 44kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.24ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.78ms | 23kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.97ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.83ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 10.95ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.89ms | 15kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.95ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.38ms | 9.8kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.46ms | 8.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.86ms | 7.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.90ms | 6.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.27ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 53.53ms | 3.7kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 55.42ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 91.45ms | 2.2kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 112.87ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 112.93ms | 1.7kps |
