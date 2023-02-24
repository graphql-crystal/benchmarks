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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.63ms | 61kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.44ms | 29kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.38ms | 23kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.64ms | 22kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.88ms | 20kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8.09ms | 12kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.43ms | 12kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.87ms | 10kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.14ms | 8.2kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.46ms | 5.4kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 19.19ms | 5.2kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 27.14ms | 3.7kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 27.40ms | 3.6kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 52.23ms | 2.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 41.32ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 49.88ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 121.33ms | 810ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 123.58ms | 800ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 194.39ms | 500ps |
