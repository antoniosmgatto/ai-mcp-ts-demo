import {
  McpServer,
  ResourceTemplate,
} from "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import { z } from "zod";

// Create a simple server
const server = new McpServer({
  name: "Example Server",
  description: "A simple example server for the Model Context Protocol",
  version: "1.0.0",
});

// Add a tool
server.tool("add", { a: z.number(), b: z.number() }, async (args) => {
  const { a, b } = args;
  console.log(`Adding ${a} and ${b}`);
  const result = a + b;

  return {
    content: [
      {
        type: "text",
        text: `The result of adding ${a} and ${b} is ${result}`,
      },
    ],
  };
});

// Add a dynamic gretting resource
server.resource(
  "greeting",
  new ResourceTemplate("gretting://{name}", { list: undefined }),
  async (uri, args) => {
    const { name } = args;
    console.log(`Greeting ${name} from URI ${uri}`);

    return {
      contents: [
        {
          uri: uri.href,
          type: "text",
          text: `Hello, ${name}! Welcome to the Model Context Protocol server!`,
        },
      ],
    };
  }
);

//Start receiving messages on stdin and sending responses on stdout
const transport = new StdioServerTransport();
await server.connect(transport);

console.log("Server is running and waiting for messages...");
