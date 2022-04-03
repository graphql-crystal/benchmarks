const { createServer } = require("http");
const { parse } = require("graphql");
const { compileQuery } = require("graphql-jit");
const { createSchema } = require("./schema");

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

server.listen(8080);