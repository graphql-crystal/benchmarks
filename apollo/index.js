import cluster from "cluster";
import { cpus } from "os";
import { ApolloServer } from "apollo-server";

process.env.PORT = "8000";

if (cluster.isPrimary) {
  for (let i = 0; i < cpus().length; i++) {
    cluster.fork();
  }
} else {
  const server = new ApolloServer({
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
  });

  server.listen(8000);
}
