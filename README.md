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

The API is served over HTTP using a common web server and load tested using [k6](https://github.com/grafana/k6).

### Results

| Name                          | Language      | Server          | Latency avg      | Requests      |
| ----------------------------  | ------------- | --------------- | ---------------- | ------------- |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 10.03ms | 9.8kps |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 11.22ms | 8.7kps |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 11.58ms | 8.5kps |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 13.04ms | 7.6kps |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 13.64ms | 7.2kps |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 13.58ms | 7.2kps |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 14.47ms | 6.8kps |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 16.32ms | 6.1kps |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 16.83ms | 5.9kps |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js | http | 22.26ms | 4.4kps |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 27.69ms | 3.6kps |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 35.02ms | 2.8kps |
| [apollo](https://github.com/apollographql/apollo-server) | Node.js | Express | 44.32ms | 2.2kps |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 54.07ms | 1.8kps |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 64.25ms | 1.3kps |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 86.69ms | 1.1kps |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 103.00ms | 960ps |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Python | gunicorn | 115.68ms | 860ps |
