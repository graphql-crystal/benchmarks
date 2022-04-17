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
| [graphql-crystal](https://github.com/graphql-crystal/graphql)   | Crystal  | Kemal        | 49576        |
| [Juniper](https://github.com/graphql-rust/juniper)              | Rust     | Actix Web    | 33545        |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust     | Actix Web    | 30478        |
| [gqlgen](https://github.com/99designs/gqlgen)                   | Go       | net/http     | 30092        |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate)    | C#       | ASP.NET Core | 22484        |
| [Mercurius](https://github.com/mercurius-js/mercurius)          | Node.js  | Fastify      | 17235        |
| [graphql-go](https://github.com/graphql-go/graphql)             | Go       | net/http     | 10963        |
| [nim-graphql](https://github.com/status-im/nim-graphql)         | Nim      | Chronos      | 9841         |
| [agoo](https://github.com/ohler55/agoo)                         | Ruby/C   | agoo         | 9767         |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga)      | Node.js  | http         | 7699         |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js  | http         | 6839         |
| [Absinthe](https://github.com/absinthe-graphql/absinthe)        | Elixir   | Phoenix      | 4155         |
| [graphql-ruby](https://graphql-ruby.org/)                       | Ruby     | Puma         | 2820         |
| [graphql-js](https://github.com/graphql/graphql-js)             | Node.js  | Express      | 2572         |
| [Sangria](https://github.com/sangria-graphql/sangria)           | Scala    | Akka HTTP    | 1896         |
| [Graphene](https://github.com/graphql-python/graphene)          | Python   | gunicorn     | 1187         |
| [Strawberry](https://github.com/strawberry-graphql/strawberry)  | Python   | gunicorn     | 998         |

Results are updated sporadically. For the latest results, see [actions](https://github.com/graphql-crystal/benchmarks/actions/workflows/run.yaml).
