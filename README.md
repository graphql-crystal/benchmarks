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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.84ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.01ms | 66kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.91ms | 51kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.56ms | 44kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.92ms | 41kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.23ms | 24kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.90ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.70ms | 19kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.12ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.62ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 18.83ms | 11kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.01ms | 9.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.73ms | 8.4kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 25.86ms | 7.7kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.44ms | 6.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.35ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.63ms | 4.3kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 54.35ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 91.59ms | 2.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.81ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 116.48ms | 1.7kps |
