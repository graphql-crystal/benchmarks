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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.90ms | 110kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.00ms | 67kps |
| [Tailcall](https://tailcall.run/) | Rust | Hyper | 3.39ms | 59kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.07ms | 49kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.92ms | 41kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 5.51ms | 36kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.97ms | 22kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.13ms | 20kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 11.06ms | 18kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.51ms | 15kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.29ms | 13kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 21.32ms | 9.4kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 21.85ms | 9.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 23.57ms | 8.5kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 30.94ms | 6.5kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 35.18ms | 5.7kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 46.03ms | 5.6kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.20ms | 4.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 97.00ms | 2.0kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 112.13ms | 1.9kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 111.40ms | 1.8kps |
