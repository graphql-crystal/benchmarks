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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.45ms | 69kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.05ms | 33kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.81ms | 26kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.10ms | 24kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.45ms | 22kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.19ms | 14kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.74ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.96ms | 9.1kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.81ms | 7.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 16.06ms | 6.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 17.46ms | 5.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.87ms | 5.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.56ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 47.89ms | 2.7kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 38.52ms | 2.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 65.71ms | 1.5kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 113.07ms | 870ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 159.55ms | 620ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 173.01ms | 570ps |
