import { ApolloServer } from "@apollo/server";
import { startStandaloneServer } from "@apollo/server/standalone";
import { gateway } from "../common/gateway.js";
import { serviceSchemas } from "../common/service-schemas.js";

process.env.PORT = "8000";

  for (let i = 0; i < serviceSchemas.length; i++) {
    const service = serviceSchemas[i];
    const port = 8001 + i;
    const server = new ApolloServer({ schema: service });
    await startStandaloneServer(server, {
      listen: {
        port,
      },
    });
  }
  
  const server = new ApolloServer({ gateway });
  await startStandaloneServer(server, {
    listen: {
      port: 8000,
    }
  });
