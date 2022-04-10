import cluster from "cluster";
import { cpus } from "os";
import Fastify from "fastify";
import mercurius from "mercurius";

const schema = `
  type Query {
    hello(name: String): String!
  }
`;

const resolvers = {
  Query: {
    hello: async () => "world",
  },
};

if (cluster.isPrimary) {
  for (let i = 0; i < cpus().length; i++) {
    cluster.fork();
  }
} else {
  const app = Fastify();
  app.register(mercurius, {
    schema,
    resolvers,
  });

  app.listen(8000);
}
