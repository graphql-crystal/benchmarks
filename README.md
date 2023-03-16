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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.55ms | 64kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.48ms | 29kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.50ms | 22kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.78ms | 21kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.14ms | 19kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.22ms | 12kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.86ms | 10kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.78ms | 8.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.52ms | 7.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 17.86ms | 5.6kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 18.17ms | 5.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.84ms | 4.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 28.21ms | 3.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 40.07ms | 2.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.35ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 58.74ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 118.13ms | 840ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 118.19ms | 840ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 185.72ms | 530ps |
