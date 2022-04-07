const cluster = require("cluster");
const {cpus} = require("os");
const { createServer } = require("http");
const { parse } = require("graphql");
const { compileQuery } = require("graphql-jit");
const { makeExecutableSchema } = require("@graphql-tools/schema");
const { gql } = require("apollo-server-express");

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

createSchema = () =>
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