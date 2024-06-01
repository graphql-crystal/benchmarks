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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.22ms | 62kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.17ms | 48kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.44ms | 45kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.22ms | 38kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.41ms | 24kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.13ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.15ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.24ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.11ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 15.50ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.15ms | 9.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.21ms | 8.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 26.27ms | 7.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.97ms | 6.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.66ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 47.78ms | 4.2kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 54.93ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 93.76ms | 2.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 113.89ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 114.23ms | 1.7kps |
