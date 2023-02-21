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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.27ms | 79kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.76ms | 36kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.08ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.28ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.59ms | 28kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.86ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.42ms | 16kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.37ms | 11kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 11.15ms | 9.0kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.46ms | 8.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.38ms | 8.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 14.16ms | 7.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.40ms | 5.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 29.93ms | 3.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 39.29ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 31.61ms | 3.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 95.92ms | 1.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 96.63ms | 1.0kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 119.38ms | 830ps |
