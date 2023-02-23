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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 2.00ms | 50kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 4.03ms | 25kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 5.86ms | 17kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 6.68ms | 15kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 7.79ms | 13kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 11.40ms | 8.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.48ms | 7.4kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.02ms | 7.1kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.91ms | 7.1kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 19.41ms | 5.1kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 23.30ms | 4.3kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 30.21ms | 3.3kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 30.48ms | 3.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 54.14ms | 2.4kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 47.32ms | 2.1kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 54.70ms | 1.8kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 129.06ms | 760ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 132.23ms | 740ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 183.81ms | 530ps |
