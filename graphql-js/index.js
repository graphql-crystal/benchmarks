import cluster from 'cluster';
import {cpus} from 'os';
import express from 'express';
import {graphqlHTTP} from 'express-graphql';
import {
  GraphQLSchema,
  GraphQLObjectType,
  GraphQLString,
} from 'graphql';

if (cluster.isPrimary) {
  for (let i = 0; i < cpus().length; i++) {
    cluster.fork();
  }
} else {
  var schema = new GraphQLSchema({
    query: new GraphQLObjectType({
      name: 'RootQueryType',
      fields: {
        hello: {
          type: GraphQLString,
          resolve() {
            return 'world';
          },
        },
      },
    }),
  });

  var app = express();
  app.use('/graphql', graphqlHTTP({
    schema: schema,
  }));

  app.listen(8000);
}