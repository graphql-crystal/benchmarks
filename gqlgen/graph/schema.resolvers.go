package graph

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.

import (
	"context"
	"github.com/graphql-crystal/benchmarks/gqlgen/graph/generated"
)

func (r *queryResolver) Hello(ctx context.Context) (string, error) {
	return "world", nil
}

// Query returns generated.QueryResolver implementation.
func (r *Resolver) Query() generated.QueryResolver { return &queryResolver{r} }

type queryResolver struct{ *Resolver }