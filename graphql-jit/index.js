import cluster from "cluster";
import { cpus } from "os";
import { createServer } from "http";
import { parse } from "graphql";
import { compileQuery } from "graphql-jit";
import { makeExecutableSchema } from "@graphql-tools/schema";
import { gql } from "apollo-server-express";

const typeDefs = gql`
  type Query {
    hello: String!
  }
`;

const resolvers = {
  Query: {
    hello: () => "world",
  },
};

const createSchema = () =>
  makeExecutableSchema({
    typeDefs,
    resolvers,
  });

if (cluster.isPrimary) {
  for (let i = 0; i < cpus().length; i++) {
    cluster.fork();
  }
} else {
  const schema = createSchema();

  const server = createServer((req, res) => {
    let payload = "";

    req.on("data", (chunk) => {
      payload += chunk.toString();
    });

    req.on("end", async () => {
      const { query } = JSON.parse(payload);
      const result = await compileQuery(schema, parse(query)).query();
      res.end(JSON.stringify(result));
    });
  });

  server.listen(8000);
}
