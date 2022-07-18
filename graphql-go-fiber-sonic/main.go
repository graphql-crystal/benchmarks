package main

import (
	"log"

	json "github.com/bytedance/sonic"
	"github.com/gofiber/fiber/v2"

	gqlgo "github.com/graph-gophers/graphql-go"
)

type query struct{}

func (_ *query) Hello() string { return "world" }

func main() {
	s := `
		type Query {
				hello: String!
		}
	`
	schema := gqlgo.MustParseSchema(s, &query{})

	// HTTP Server
	app := fiber.New(fiber.Config{
		JSONEncoder: json.Marshal,
		JSONDecoder: json.Unmarshal,
	})

	// GraphQL handler
	app.Post("/graphql", func(c *fiber.Ctx) error {
		var params struct {
			Query         string                 `json:"query"`
			OperationName string                 `json:"operationName"`
			Variables     map[string]interface{} `json:"variables"`
		}

		err := c.BodyParser(&params)
		if err != nil {
			_ = c.Status(fiber.StatusBadRequest).SendString(err.Error())
			return err
		}

		response := schema.Exec(c.Context(), params.Query, params.OperationName, params.Variables)
		return c.Status(fiber.StatusOK).JSON(response)
	})

	log.Fatal(app.Listen(":8000"))
}
