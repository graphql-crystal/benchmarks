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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.38ms | 72kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.88ms | 35kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.60ms | 28kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.28ms | 23kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.30ms | 23kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.09ms | 14kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.70ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.14ms | 9.8kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.35ms | 8.1kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 14.59ms | 6.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.41ms | 6.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.51ms | 4.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 21.94ms | 4.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 34.41ms | 2.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.59ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 41.51ms | 2.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 100.52ms | 980ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 103.57ms | 950ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 137.54ms | 720ps |
