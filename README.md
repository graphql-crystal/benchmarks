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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.56ms | 64kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.57ms | 28kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.27ms | 23kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.40ms | 23kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 5.29ms | 19kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.24ms | 12kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.20ms | 11kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.66ms | 10kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.02ms | 8.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 18.71ms | 5.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 19.71ms | 5.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 22.23ms | 4.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 27.42ms | 3.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 40.65ms | 2.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 53.94ms | 2.4kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 51.08ms | 1.9kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 121.46ms | 810ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 124.35ms | 790ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 172.94ms | 560ps |
