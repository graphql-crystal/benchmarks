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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.45ms | 69kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 2.62ms | 38kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 3.47ms | 29kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 3.63ms | 28kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 3.75ms | 27kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6.08ms | 16kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 8.53ms | 12kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 8.65ms | 12kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 10.35ms | 9.7kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 15.31ms | 6.5kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 17.02ms | 5.9kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 21.91ms | 4.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 32.26ms | 3.1kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 44.88ms | 2.9kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 41.46ms | 2.4kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 107.95ms | 920ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 109.07ms | 910ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 136.89ms | 720ps |
