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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.28ms | 78kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.44ms | 41kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.12ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.74ms | 27kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.88ms | 26kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.71ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.67ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.15ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 10.25ms | 9.7kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 12.83ms | 7.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.83ms | 6.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.59ms | 5.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 21.73ms | 4.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.95ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 45.03ms | 2.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 40.66ms | 2.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 102.87ms | 960ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 104.73ms | 950ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 105.82ms | 930ps |
