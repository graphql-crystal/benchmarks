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
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 2.83ms | 71kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.96ms | 67kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.27ms | 47kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.66ms | 43kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.12ms | 39kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 9.05ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 9.73ms | 21kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.15ms | 18kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.66ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.70ms | 14kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 19.03ms | 10kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.80ms | 10kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.33ms | 9.4kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.38ms | 8.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 30.69ms | 6.5kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 42.37ms | 6.1kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.93ms | 5.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 52.62ms | 3.8kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 89.95ms | 2.2kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 108.75ms | 1.8kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 109.29ms | 1.8kps |
