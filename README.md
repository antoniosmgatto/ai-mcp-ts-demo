# AI MCP TypeScript Demo

A demonstration project showcasing the Model Context Protocol (MCP) server implementation using TypeScript.

## Description

This project serves as an example implementation of an MCP server built with TypeScript, demonstrating how to create and configure a server that can interact with AI systems through the Model Context Protocol.

## Features

- TypeScript implementation for type safety
- Model Context Protocol (MCP) server setup
- Zod schema validation
- Development and production build scripts

## Prerequisites

- Node.js (version 16 or higher)
- npm or yarn package manager

## Installation

1. Clone the repository:

```bash
git clone https://github.com/antoniosmgatto/ai-mcp-ts-demo.git
cd ai-mcp-ts-demo
```

2. Install dependencies:

```bash
npm install
```

## Usage

### Development Mode

Run the server in development mode with hot reload:

```bash
npm run dev
```

### Inspect Mode

Run the server with the MCP Inspector to debug and analyze protocol messages:

```bash
npm run inspect
```

This launches your server through the MCP Inspector tool, which provides a visual interface to monitor and debug the MCP communication between your server and client applications.

### Build for Production

Compile TypeScript to JavaScript:

```bash
npm run build
```

### Run Production Build

Start the compiled server:

```bash
npm start
```

## Project Structure

```
ai-mcp-ts-demo/
├── index.ts          # Main server entry point
├── dist/             # Compiled JavaScript output
├── package.json      # Project dependencies and scripts
├── tsconfig.json     # TypeScript configuration
└── README.md         # Project documentation
```

## Scripts

- `npm run build` - Compile TypeScript to JavaScript
- `npm run dev` - Run development server with ts-node
- `npm run inspect` - Run server with MCP Inspector for debugging
- `npm start` - Run compiled JavaScript from dist folder

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Links

- [Repository](https://github.com/antoniosmgatto/ai-mcp-ts-demo)
- [Issues](https://github.com/antoniosmgatto/ai-mcp-ts-demo/issues)
- [Model Context Protocol Documentation](https://modelcontextprotocol.io/)
