package main

import (
	"log"
	"net/http"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/graphql-crystal/benchmarks/gqlgen/graph"
	"github.com/graphql-crystal/benchmarks/gqlgen/graph/generated"
)

func main() {
	srv := handler.NewDefaultServer(generated.NewExecutableSchema(generated.Config{Resolvers: &graph.Resolver{}}))
	http.Handle("/graphql", srv)
	log.Fatal(http.ListenAndServe(":8000", nil))
}
