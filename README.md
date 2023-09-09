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
| [static-rust](https://actix.rs/) | Rust | Actix Web | 1.71ms | 58kps |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 3.62ms | 28kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 4.09ms | 24kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 4.51ms | 22kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 4.98ms | 20kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 8.84ms | 11kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 10.03ms | 10.0kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 13.99ms | 7.1kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 14.56ms | 6.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 19.03ms | 5.3kps |
| [Hono](https://github.com/honojs/graphql-server) | Bun | HonoJS | 19.48ms | 5.1kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 24.40ms | 4.1kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 28.07ms | 3.6kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 42.85ms | 2.3kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 56.21ms | 2.3kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 51.52ms | 1.9kps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 123.22ms | 800ps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 124.80ms | 790ps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 178.29ms | 550ps |
