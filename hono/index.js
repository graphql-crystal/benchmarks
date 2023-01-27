import { Hono } from 'hono';
import { graphqlServer } from '@honojs/graphql-server';
import { buildSchema } from 'graphql/utilities/buildASTSchema.js';

export const app = new Hono();

const schema = buildSchema(`
  type Query {
    hello: String
  }
`);

const rootValue = {
  hello: async () => 'world',
};

app.use(
  '/graphql',
  graphqlServer({
    schema,
    rootValue,
  })
);

export default {
  port: process.env.PORT || 8000,
  fetch: app.fetch,
};