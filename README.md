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

| Name                          | Language      | Server          | Req/s         | Latency avg/min/med/max |
| ----------------------------  | ------------- | --------------- | ------------- | ----------------------- |
| [graphql-crystal](https://github.com/graphql-crystal/graphql) | Crystal | Kemal | 11975.47 | 8.18/0.06/6.75/64.3            |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust | Actix Web | 10172.65 | 9.5/0.09/7.35/73.57            |
| [Juniper](https://github.com/graphql-rust/juniper) | Rust | Actix Web | 10119.34 | 9.58/0.07/7.48/74.04            |
| [nim-graphql](https://github.com/status-im/nim-graphql) | Nim | Chronos | 8828.18 | 11.17/0.15/9.7/81.28            |
| [gqlgen](https://github.com/99designs/gqlgen) | Go | net/http | 8709.44 | 11.26/0.09/9.64/93.23            |
| [agoo](https://github.com/ohler55/agoo) | Ruby/C | agoo | 7969.85 | 12.39/0.09/9.45/139.99            |
| [Mercurius](https://github.com/mercurius-js/mercurius) | Node.js | Fastify | 7745.7 | 12.75/0.1/10.63/467.41            |
| [graphql-go](https://github.com/graphql-go/graphql) | Go | net/http | 6910.86 | 14.31/0.11/10.93/117.21            |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate) | C# | ASP.NET | 6647.26 | 14.84/0.11/11.42/629.05            |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga) | Node.js |  | 5235.39 | 18.93/0.22/14.37/965.94            |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js | http | 4006.08 | 24.7/0.29/20.03/983.6            |
| [Absinthe](https://github.com/absinthe-graphql/absinthe) | Elixir | Phoenix | 3290.3 | 30.19/1.36/26.63/219.31            |
| [graphql-js](https://github.com/graphql/graphql-js) | Node.js | http | 2188.15 | 45.36/0.63/40.4/1463.19            |
| [Sangria](https://github.com/sangria-graphql/sangria) | Scala | Akka HTTP | 1554.81 | 63.84/0.83/41.73/2828.77            |
| [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) | Ruby | Puma | 1509.5 | 54.83/0.57/1.45/4865.18            |
| [Graphene](https://github.com/graphql-python/graphene) | Python | gunicorn | 1102.88 | 89.96/3.34/89.35/144.6            |
| [Strawberry](https://github.com/strawberry-graphql/strawberry) | Scala | Akka HTTP | 987.96 | 100.29/12.82/98.28/146.91            |
