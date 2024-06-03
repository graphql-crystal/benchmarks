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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.82ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.12ms | 64kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.98ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.59ms | 43kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.12ms | 39kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.42ms | 24kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.97ms | 20kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 10.71ms | 19kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.06ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.87ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 16.47ms | 12kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.26ms | 9.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.24ms | 8.6kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 25.40ms | 7.9kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.54ms | 6.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 43.53ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 48.00ms | 4.2kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 53.98ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 95.72ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 112.21ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 112.50ms | 1.8kps |
