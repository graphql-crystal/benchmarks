package main

import (
	"log"
	"net/http"
	"os"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/graphql-crystal/benchmarks/gqlgen/graph"
	"github.com/graphql-crystal/benchmarks/gqlgen/graph/generated"
)

const defaultPort = "8000"

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = defaultPort
	}

	srv := handler.NewDefaultServer(generated.NewExecutableSchema(generated.Config{Resolvers: &graph.Resolver{}}))

	http.Handle("/graphql", srv)
	log.Fatal(http.ListenAndServe(":"+port, nil))
}
