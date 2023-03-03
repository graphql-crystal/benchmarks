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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.11ms | 47kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.41ms | 23kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 6.51ms | 15kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 7.44ms | 13kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 8.26ms | 12kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 13.21ms | 7.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 14.97ms | 6.7kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 15.14ms | 6.6kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 15.90ms | 6.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 20.94ms | 4.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 27.30ms | 3.7kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 29.30ms | 3.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 34.07ms | 2.9kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 61.09ms | 2.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 53.97ms | 1.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 63.71ms | 1.6kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 150.14ms | 650ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 154.02ms | 640ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 208.15ms | 470ps |
