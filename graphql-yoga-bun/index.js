import { createSchema, createYoga } from "graphql-yoga";

const yoga = createYoga({
  schema: createSchema({
    typeDefs: `
        type Query {
          hello: String!
        }
      `,
    resolvers: {
      Query: {
        hello: () => "world",
      },
    },
  }),
  logging: false,
});

export default {
  port: process.env.PORT || 8000,
  fetch: yoga.fetch,
};