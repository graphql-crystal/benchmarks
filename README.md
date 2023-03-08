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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.27ms | 78kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.47ms | 41kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.14ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.35ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.65ms | 27kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.42ms | 16kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 6.57ms | 15kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.23ms | 11kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.23ms | 9.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.75ms | 8.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 14.07ms | 7.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.34ms | 7.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 17.55ms | 5.7kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.70ms | 4.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.40ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.61ms | 3.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 96.22ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 97.85ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 125.30ms | 790ps |
