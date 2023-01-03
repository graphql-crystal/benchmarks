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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.43ms | 70kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.87ms | 35kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.59ms | 28kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.94ms | 25kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.00ms | 25kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.68ms | 15kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7.54ms | 13kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 9.56ms | 11kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.12ms | 9.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.10ms | 6.6kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 16.62ms | 6.0kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 22.98ms | 4.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.19ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.94ms | 2.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 46.73ms | 2.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 105.81ms | 930ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 106.59ms | 930ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 149.93ms | 660ps |
