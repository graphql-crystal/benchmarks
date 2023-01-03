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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.19ms | 84kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.85ms | 35kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.00ms | 33kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.29ms | 30kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.43ms | 29kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 5.89ms | 17kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.41ms | 16kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8.44ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 8.86ms | 11kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 11.76ms | 8.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 13.41ms | 7.5kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 18.85ms | 5.3kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 24.16ms | 4.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 38.76ms | 3.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 32.54ms | 3.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 101.07ms | 980ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 101.64ms | 970ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 114.50ms | 860ps |
