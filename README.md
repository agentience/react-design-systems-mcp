# React Design Systems

[![npm version](https://img.shields.io/npm/v/@agentience/react-design-systems-mcp.svg)](https://www.npmjs.com/package/@agentience/react-design-systems-mcp)

React Design Systems is a Model Context Protocol (MCP) server that provides comprehensive information about design systems created for React. The current version focuses exclusively on the AWS Cloudscape Design System components, along with code generation capabilities. It's built using the FastMCP framework and TypeScript.

Future versions will expand to support additional popular React design systems including Material UI, Chakra UI, Ant Design, Blueprint, and Mantine.

## Change Log
See [CHANGELOG.md](CHANGELOG.md)

## Features

### Component Information & Search
- Search for Cloudscape components with advanced filtering options
- Get detailed information about components including properties, events, and functions
- Access component usage guidelines and best practices
- Search across component usage guidelines by content, section, or specific component
- Get component examples with detailed code snippets
- Compare components and their capabilities

### Code Generation
- Generate code for components with customization options
- Generate code for common UI patterns and layouts
- Generate multi-component layouts and compositions
- Validate component props and configurations

### Advanced Functionality
- **Usage Guidelines**: Comprehensive access to component usage guidelines with hybrid resource/tool approach
  - Direct access via `cloudscape://usage/{componentId}` resource URIs
  - Advanced search capabilities across all usage content
  - Section-specific filtering (Features, General guidelines, etc.)
  - Cross-component content search
- **Events & Functions**: Search and explore component events and function APIs
- **Pattern Library**: Access to design patterns and architectural guidance
- **Setup Instructions**: Get frontend-code mode setup and configuration guidance

## Requirements

- **Node.js**: 24.0.1 or higher
- **npm**: 10.x or higher (comes with Node.js 24.0.1)

## Installation

### For Usage as a Dependency

```bash
# Install from npm
npm install @agentience/react-design-systems-mcp
```

### Global Installation

```bash
# Install globally to use as a CLI tool
npm install -g @agentience/react-design-systems-mcp

# Then you can run it directly
react-design-systems-mcp
```

## Claude Desktop Configuration

To use React Design Systems with Claude Desktop, you can configure it as an MCP server using the npm package. This allows Claude Desktop to automatically launch the server when needed.

### Configuration File

Add the following configuration to your Claude Desktop MCP settings file:

**Location:**
- **macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
- **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`

**Configuration:**
```json
{
  "mcpServers": {
    "react-design-systems": {
      "command": "npx",
      "args": [
        "@agentience/react-design-systems-mcp"
      ]
    }
  }
}
```

### Command Line Parameters

The server supports the following command line parameters:

- `--transport <type>` or `-t <type>`: Transport type (`stdio` or `sse`). Default: `stdio`
- `--port <number>` or `-p <number>`: Port for SSE transport. Default: `3001`
- `--bind <address>` or `-b <address>`: Bind address for SSE transport. Default: `0.0.0.0`

### Using with Claude

For optimal results when using this MCP server with Claude, consider using a specialized system prompt. We provide an example system prompt that configures Claude as an expert Cloudscape developer with AWS Amplify Gen 2 knowledge. See [Claude Cloudscape & Amplify Expert](prompts/claude-cloudscape-amplify-prompt.md) for details.

### Advanced Configuration Examples

#### With Custom Parameters

```json
{
  "mcpServers": {
    "react-design-systems": {
      "command": "npx",
      "args": [
        "@agentience/react-design-systems-mcp",
        "--transport",
        "stdio"
      ]
    }
  }
}
```

#### Using Local Installation

If you have the package installed globally or locally:

```json
{
  "mcpServers": {
    "react-design-systems": {
      "command": "react-design-systems-mcp"
    }
  }
}
```

#### Development Configuration

For development with a local build:

```json
{
  "mcpServers": {
    "react-design-systems": {
      "command": "node",
      "args": [
        "/path/to/react-design-systems-mcp/dist/server.js"
      ],
      "cwd": "/path/to/react-design-systems-mcp"
    }
  }
}
```

### Verification

After adding the configuration:

1. Restart Claude Desktop
2. Start a new conversation
3. The React Design Systems MCP server should be automatically available
4. You can use tools like `search_components` to verify the connection

For troubleshooting connection issues, see the [MCP Protocol Guide](docs/mcp-protocol-guide.md).

## Docker Deployment

This project can be deployed using Docker. For detailed instructions, see [Docker Deployment Guide](DOCKER.md).

### Quick Start with Docker

```bash
# Pull the image from GitHub Container Registry
docker pull ghcr.io/agentience/react-design-systems-mcp:latest

# Run the container
docker run -d -p 3005:3005 --name react-design-systems-mcp ghcr.io/agentience/react-design-systems-mcp:latest
```

### Using Docker Compose

```bash
# Clone the repository
git clone https://github.com/agentience/react-design-systems-mcp.git
cd react-design-systems-mcp

# Start with Docker Compose
docker-compose up -d
```

For information on building and publishing the Docker image to GitHub Container Registry, see [Docker Publishing Guide](docs/docker-publishing-guide.md).

## FastMCP Implementation

This project uses the FastMCP framework for a more structured and type-safe approach to building MCP servers. For detailed information about the FastMCP implementation and development setup, see [DEVELOPMENT.md](DEVELOPMENT.md).

## Available Tools and Resources

### MCP Tools

#### Component Information
- `search_components` - Search for components with advanced filtering
- `get_component_details` - Get detailed component information
- `get_component_properties` - Get component properties and their specifications
- `get_component_events` - Get component events and event handling information
- `get_component_functions` - Get component functions and method APIs
- `get_component_examples` - Get component examples with optional filtering by example ID

#### Usage Guidelines
- `get_component_usage` - Get usage guidelines for a specific component with optional section filtering
- `search_usage_guidelines` - Search across component usage guidelines with query, section, and component filters

#### Code Generation
- `generate_component_code` - Generate code for components with customization
- `generate_pattern_code` - Generate code for common UI patterns
- `validate_component_props` - Validate component properties and configurations

#### Patterns and Search
- `search_patterns` - Search through design patterns and architectural guidance
- `search_properties` - Search for component properties across all components
- `search_events` - Search for component events with filtering options
- `search_functions` - Search for component functions and methods

#### Utility Tools
- `compare_components` - Compare multiple components and their capabilities
- `generate_layout_code` - Generate multi-component layouts
- `get_frontend_setup` - Get setup instructions for frontend-code mode
- `get_link_resource` - Resolve internal links from usage.md files to appropriate backend resources

### MCP Resources

#### Component Usage Guidelines
- `cloudscape://usage/{componentId}` - Direct access to component usage guidelines in markdown format

### Example Usage

```bash
# Search for button-related components
search_components({"query": "button", "category": "actions"})

# Get detailed information about a specific component
get_component_details({"componentId": "button"})

# Access usage guidelines directly
Resource: cloudscape://usage/button

# Search across usage guidelines
search_usage_guidelines({"query": "primary button", "section": "Features"})

# Generate component code
generate_component_code({"componentId": "button", "variant": "primary"})
```

## Documentation

- [Architecture](docs/architecture.md)
- [Component Library](docs/component-library.md)
- [FastMCP Implementation](docs/fastmcp-implementation.md)
- [Frontend Code Mode](docs/frontend-code-mode.md)
- [MCP Protocol Guide](docs/mcp-protocol-guide.md)
- [Roo Integration Guide](docs/roo-integration-guide.md)
- [Usage Guide](docs/usage-guide.md)
- [Docker Deployment Guide](DOCKER.md)
- [Docker Publishing Guide](docs/docker-publishing-guide.md)

### System Prompts

- [Claude Cloudscape & Amplify Expert](prompts/claude-cloudscape-amplify-prompt.md) - Example system prompt for using Claude as an expert Cloudscape developer with AWS Amplify Gen 2

## Roadmap

React Design Systems currently supports the AWS Cloudscape Design System, but we plan to expand support to other popular React design systems in the future:

- **Material UI**: Comprehensive support for Google's Material Design implementation for React
- **Chakra UI**: Component-focused support for the accessible and customizable Chakra UI library
- **Ant Design**: Enterprise-grade UI system for React applications
- **Blueprint**: Support for Palantir's UI toolkit for web applications
- **Mantine**: Modern React components with excellent dark mode support

If you're interested in contributing support for additional design systems, please check out our [Contributing](#contributing) guidelines.

## Using as a Dependency

When using this package as a dependency in your project, you can import and use it as follows:

```javascript
// CommonJS
const { createReactDesignSystemsServer } = require('@agentience/react-design-systems-mcp');

// ES Modules
import { createReactDesignSystemsServer } from '@agentience/react-design-systems-mcp';

// Create and configure the server
const server = createReactDesignSystemsServer({
  // Configuration options
});

// Start the server
server.start();
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

MIT - See [LICENSE](LICENSE) for more information.## Available Documentation

- [React Design Systems Development](./DEVELOPMENT.md)
- [Docker Deployment for React Design Systems](./DOCKER.md)
- [React Design Systems v1.0.4](./release-notes.md)