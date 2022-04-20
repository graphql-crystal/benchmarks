import cluster from "cluster";
import { cpus } from "os";
import { createServer } from "@graphql-yoga/node";
import { useGraphQlJit } from "@envelop/graphql-jit";

process.env.PORT = "8000";

if (cluster.isPrimary) {
  for (let i = 0; i < cpus().length; i++) {
    cluster.fork();
  }
} else {
  const server = createServer({
    schema: {
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
    },
    plugins: [useGraphQlJit()],
    logging: false,
  });

  server.start();
}
