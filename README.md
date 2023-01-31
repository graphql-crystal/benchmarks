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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.23ms | 81kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.40ms | 42kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.06ms | 33kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.33ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.81ms | 26kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.90ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.19ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 7.81ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.86ms | 11kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 11.87ms | 8.4kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 15.70ms | 6.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.78ms | 5.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.81ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 23.37ms | 4.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.88ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.49ms | 3.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 101.37ms | 980ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 101.56ms | 970ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 114.06ms | 870ps |
