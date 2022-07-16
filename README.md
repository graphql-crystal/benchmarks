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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.29ms | 78kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.43ms | 41kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.17ms | 32kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.51ms | 28kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.76ms | 27kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.50ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.64ms | 13kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.17ms | 11kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 9.54ms | 10kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 10.47ms | 9.5kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.31ms | 6.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.84ms | 5.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.22ms | 4.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 31.02ms | 3.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.93ms | 2.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 40.17ms | 2.5kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 95.31ms | 1.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 104.06ms | 950ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 104.28ms | 950ps |
