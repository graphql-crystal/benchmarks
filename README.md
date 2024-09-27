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
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.15ms | 63kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.74ms | 53kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.40ms | 45kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.14ms | 39kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.02ms | 25kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.39ms | 24kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 9.90ms | 20kps |
| [GraphqlD](https://github.com/burner/graphqld) | D | Vibe.d | 11.54ms | 17kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 13.63ms | 15kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 14.05ms | 14kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 19.43ms | 10kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.72ms | 8.4kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 28.32ms | 7.0kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 33.09ms | 6.0kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.77ms | 5.5kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 50.46ms | 3.9kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 56.07ms | 3.7kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 104.47ms | 1.9kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 115.63ms | 1.7kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 122.29ms | 1.6kps |
