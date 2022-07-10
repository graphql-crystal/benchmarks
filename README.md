<!-- README.md is generated from README.ecr, do not edit -->

# GraphQL server benchmarks

Graphql server benchmarks in many languages. Pull requests welcome.

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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 0.61ms | 81kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 1.25ms | 40kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 1.53ms | 33kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 1.83ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 1.93ms | 26kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 3.26ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 4.11ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 4.39ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 5.35ms | 9.3kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 7.73ms | 6.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 8.81ms | 5.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.07ms | 4.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 16.11ms | 3.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 16.55ms | 3.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 21.44ms | 2.8kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 19.42ms | 2.6kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 52.87ms | 950ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 52.94ms | 940ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 56.26ms | 880ps |
