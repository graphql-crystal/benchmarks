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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.60ms | 62kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.65ms | 27kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.49ms | 22kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.27ms | 19kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.41ms | 18kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.22ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.01ms | 10kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.66ms | 9.4kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.87ms | 7.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 17.91ms | 5.6kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 19.21ms | 5.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 25.38ms | 3.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 28.67ms | 3.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 54.41ms | 2.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 43.50ms | 2.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 50.21ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 121.24ms | 820ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 123.87ms | 800ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 201.23ms | 490ps |
