import { createServer } from '@graphql-yoga/node'

process.env.PORT = "8000"

const server = createServer({
  schema: {
    typeDefs: `
      type Query {
        hello: String!
      }
    `,
    resolvers: {
      Query: {
        hello: () => 'world'
      }
    }
  }
})

server.start()
