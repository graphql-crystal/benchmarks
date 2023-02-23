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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.19ms | 46kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.93ms | 25kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.11ms | 16kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 6.80ms | 15kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 7.34ms | 14kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 10.38ms | 9.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.96ms | 8.4kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.89ms | 7.2kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.24ms | 7.0kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 16.09ms | 6.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 23.58ms | 4.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 27.29ms | 3.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 29.63ms | 3.4kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 54.49ms | 2.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 47.51ms | 2.1kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 57.22ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 124.35ms | 800ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 129.39ms | 760ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 184.52ms | 530ps |
