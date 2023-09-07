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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.78ms | 56kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.58ms | 28kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.58ms | 22kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.76ms | 21kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.24ms | 19kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.10ms | 11kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.06ms | 9.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.76ms | 7.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.23ms | 7.6kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.12ms | 5.2kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 19.50ms | 5.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.85ms | 4.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 28.75ms | 3.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 42.39ms | 2.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 55.94ms | 2.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 65.63ms | 1.5kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 125.28ms | 790ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 131.59ms | 750ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 200.52ms | 490ps |
