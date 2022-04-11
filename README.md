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
| [graphql-crystal](https://github.com/graphql-crystal/graphql)   | Crystal  | Kemal        | 54312        |
| [gqlgen](https://github.com/99designs/gqlgen)                   | Go       | net/http     | 34533        |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust     | Actix Web    | 34322        |
| [Juniper](https://github.com/graphql-rust/juniper)              | Rust     | Actix Web    | 33927        |
| [Hot Chocolate](https://github.com/ChilliCream/hotchocolate)    | C#       | ASP.NET Core | 24103        |
| [Mercurius](https://github.com/mercurius-js/mercurius)          | Node.js  | Fastify      | 19097        |
| [graphql-go](https://github.com/graphql-go/graphql)             | Go       | net/http     | 11925        |
| [nim-graphql](https://github.com/status-im/nim-graphql)         | Nim      | Chronos      | 10756        |
| [agoo](https://github.com/ohler55/agoo)                         | Ruby/C   | agoo         | 10185        |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js  | http         | 7324         |
| [Absinthe](https://github.com/absinthe-graphql/absinthe)        | Elixir   | Phoenix      | 5045         |
| [graphql-ruby](https://graphql-ruby.org/)                       | Ruby     | Puma         | 3240         |
| [graphql-js](https://github.com/graphql/graphql-js)             | Node.js  | Express      | 3061         |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga)      | Node.js  | http         | 2867         |
| [Sangria](https://github.com/sangria-graphql/sangria)           | Scala    | Akka HTTP    | 2091         |
| [Graphene](https://github.com/graphql-python/graphene)          | Python   | gunicorn     | 1378         |
| [Strawberry](https://github.com/strawberry-graphql/strawberry)  | Python   | gunicorn     | 1150         |

Results are updated sporadically. For the latest results, see [actions](https://github.com/graphql-crystal/benchmarks/actions/workflows/run.yaml).
