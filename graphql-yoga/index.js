import { createYoga } from "graphql-yoga";
import { createServer } from "node:http";
import { gateway } from "../common/gateway.js";
import { useApolloFederation } from '@envelop/apollo-federation'
import { serviceSchemas } from "../common/service-schemas.js";
import waitOn from "wait-on";
 
  for (let i = 0; i < serviceSchemas.length; i++) {
    const schema = serviceSchemas[i];
    const port = 8001 + i;
    const yoga = createYoga({
      schema,
      logging: false,
    });
    const server = createServer(yoga);
    await new Promise((resolve) => server.listen(port, resolve));
  }
  await waitOn({ resources: ["tcp:8001", "tcp:8002", "tcp:8003", "tcp:8004"] });
  await gateway.load();
  const yoga = createYoga({
    plugins: [
      useApolloFederation({
        gateway,
      })
    ],
    logging: false,
  });

  const server = createServer(yoga);

  server.listen(8000);
