library(magrittr)
library(gqlr)

schema <- "
  type Query{
    hello: String
  }
  schema {
    query: Query
  }
" %>%
  gqlr_schema(
    Query = function(null, schema) {
        list(
             hello = function(obj, args, schema) {
                 "world"
             }
        )
    }
  )

gqlr:::server(schema, log = FALSE)
