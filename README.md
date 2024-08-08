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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.83ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.04ms | 66kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.01ms | 50kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.60ms | 43kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.15ms | 39kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.45ms | 24kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.04ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.72ms | 19kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.14ms | 18kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 14.91ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 15.75ms | 13kps |
| [apollo-server-core](https://github.com/apollographql/apollo-server-core) | Node.js | http | 18.98ms | 11kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 20.76ms | 9.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 24.63ms | 8.1kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 27.91ms | 7.2kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.02ms | 6.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 42.77ms | 6.0kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 50.02ms | 4.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 55.40ms | 3.6kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 95.88ms | 2.1kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 115.72ms | 1.7kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 116.07ms | 1.7kps |
