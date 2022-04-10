# GraphQL server benchmarks

Graphql server benchmarks in many languages. Pull requests welcome.

All servers implement a simple schema:

```graphql
type Query {
  hello: String!
}
```

The returned string is always `world`.

The API is served over HTTP using a common web server and load tested using [wrk](https://github.com/wg/wrk).

### Results

| Name                                                            | Language | Server       | Requests/sec |
| --------------------------------------------------------------- | -------- | ------------ | ------------ |
| [graphql-crystal](https://github.com/graphql-crystal/graphql)   | Crystal  | Kemal        | 53175        |
| [Juniper](https://github.com/graphql-rust/juniper)              | Rust     | Actix Web    | 38799        |
| [gqlgen](https://github.com/99designs/gqlgen)                   | Go       | net/http     | 36264        |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust     | Actix Web    | 34492        |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate)    | C#       | ASP.NET Core | 28232        |
| [Mercurius](https://github.com/mercurius-js/mercurius)          | Node.js  | Fastify      | 19421        |
| [graphql-go](https://github.com/graphql-go/graphql)             | Go       | net/http     | 11949        |
| [agoo](https://github.com/ohler55/agoo)                         | Ruby/C   | agoo         | 9915         |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js  | http         | 7702         |
| [Absinthe](https://github.com/absinthe-graphql/absinthe)        | Elixir   | Phoenix      | 5161         |
| [graphql-ruby](https://graphql-ruby.org/)                       | Ruby     | Puma         | 3435         |
| [graphql-js](https://github.com/graphql/graphql-js)             | Node.js  | Express      | 3020         |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga)      | Node.js  | http         | 2942         |
| [Sangria](https://github.com/sangria-graphql/sangria)           | Scala    | Akka HTTP    | 2152         |
| [Graphene](https://github.com/graphql-python/graphene)          | Python   | gunicorn     | 1457         |
| [Strawberry](https://github.com/strawberry-graphql/strawberry)  | Python   | gunicorn     | 1203         |
| [nim-graphql](https://github.com/status-im/nim-graphql)         | Nim      | Chronos      |              |

Results are updated sporadically. For the latest results, see [actions](https://github.com/graphql-crystal/benchmarks/actions/workflows/run.yaml).
