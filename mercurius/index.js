const cluster = require("cluster");
const {cpus} = require("os");
const Fastify = require('fastify')
const mercurius = require('mercurius')

const schema = `
  type Query {
    hello(name: String): String!
  }
`

const resolvers = {
  Query: {
    hello: async (_, { name }) => 'world'
  }
}

if (cluster.isPrimary) {
  for (let i = 0; i < cpus().length; i++) {
    cluster.fork();
  }
} else {
  const app = Fastify();
  app.register(mercurius, {
    schema,
    resolvers
  });

  app.listen(8000);
}
