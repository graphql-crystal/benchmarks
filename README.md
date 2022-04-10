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
| [graphql-crystal](https://github.com/graphql-crystal/graphql)   | Crystal  | Kemal        | 61358        |
| [async-graphql](https://github.com/async-graphql/async-graphql) | Rust     | Actix Web    | 39312        |
| [Juniper](https://github.com/graphql-rust/juniper)              | Rust     | Actix Web    | 38799        |
| [gqlgen](https://github.com/99designs/gqlgen)                   | Go       | net/http     | 36744        |
| [HotChocolate](https://github.com/ChilliCream/hotchocolate)     | C#       | ASP.NET Core | 24411        |
| [graphql-go](https://github.com/graphql-go/graphql)             | Go       | net/http     | 13291        |
| [agoo](https://github.com/ohler55/agoo)                         | Ruby/C   | agoo         | 9677         |
| [graphql-jit](https://github.com/zalando-incubator/graphql-jit) | Node.js  | http         | 8837         |
| [graphql-js](https://github.com/graphql/graphql-js)             | Node.js  | Express      | 3840         |
| [graphql-ruby](https://graphql-ruby.org/)                       | Ruby     | Puma         | 3671         |
| [Sangria](https://github.com/sangria-graphql/sangria)           | Scala    | Akka HTTP    | 2672         |
| [graphql-yoga](https://github.com/dotansimha/graphql-yoga)      | Node.js  | http         | 1957         |
| [Graphene](https://github.com/graphql-python/graphene)          | Python   | gunicorn     | 1435         |
| [Strawberry](https://github.com/strawberry-graphql/strawberry)  | Python   | gunicorn     | 1153         |
| [Absinthe](https://github.com/absinthe-graphql/absinthe)        | Elixir   | Phoenix      |              |

Results are updated sporadically. For the latest results, see [actions](https://github.com/graphql-crystal/benchmarks/actions/workflows/run.yaml).
