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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.78ms | 56kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.32ms | 30kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.87ms | 21kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 6.13ms | 16kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 6.32ms | 16kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 10.58ms | 9.5kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 11.33ms | 8.9kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 12.57ms | 8.0kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 12.83ms | 7.8kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 21.69ms | 4.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 27.78ms | 3.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 31.68ms | 3.2kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 56.75ms | 2.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 50.89ms | 2.0kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 50.84ms | 2.0kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 127.82ms | 770ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 131.90ms | 750ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 137.11ms | 710ps |
