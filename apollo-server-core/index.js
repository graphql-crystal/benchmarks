import cluster from "cluster";
import { cpus } from "os";
import { createServer } from "http";
import { ApolloServerBase, gql } from 'apollo-server-core'
import { makeExecutableSchema } from '@graphql-tools/schema'

const typeDefs = gql`
  type Query {
    hello(name: String): String!
  }
`;

const resolvers = {
  Query: {
    hello: async () => "world",
  },
};

const createExecutableSchema = () =>
  makeExecutableSchema({
    typeDefs,
    resolvers,
  });

export class GraphQLServer extends ApolloServerBase {
  constructor () {
    super({
      schema: createExecutableSchema(),
      resolvers,
    })
  }

  async callWillStart () {
    return this.willStart()
  }
}

const server = new GraphQLServer()

const handler = (req, res) => {
  let payload = "";

  req.on("data", (chunk) => {
    payload += chunk.toString();
  });

  req.on("end", async () => {
    const { query } = JSON.parse(payload);
    const result = await server.executeOperation({ query });
    res.end(JSON.stringify(result));
  });
}

if (cluster.isPrimary) {
  for (let i = 0; i < cpus().length; i++) {
    cluster.fork();
  }
} else {
  const server = createServer(handler);
  server.listen(8000);
}
