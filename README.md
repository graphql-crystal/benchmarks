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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.44ms | 69kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.10ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.66ms | 27kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.70ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.24ms | 24kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.48ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.93ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.35ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.49ms | 9.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.26ms | 6.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 15.41ms | 6.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.67ms | 5.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.11ms | 4.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.22ms | 3.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.06ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 42.02ms | 2.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 99.31ms | 1,000ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 101.32ms | 980ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 139.53ms | 710ps |
