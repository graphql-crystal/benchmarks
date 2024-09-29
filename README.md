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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.76ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.81ms | 71kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.69ms | 54kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.27ms | 47kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.03ms | 40kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 7.59ms | 26kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.93ms | 25kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.67ms | 21kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 10.52ms | 19kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.47ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 12.55ms | 16kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 18.30ms | 11kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 21.97ms | 9.1kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 23.63ms | 8.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 29.90ms | 6.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.14ms | 6.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 43.10ms | 4.6kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 52.15ms | 3.9kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 87.05ms | 2.3kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 110.18ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.73ms | 1.8kps |
