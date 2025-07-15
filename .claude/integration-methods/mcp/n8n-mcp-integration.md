# n8n-MCP Integration

**Integration Type**: MCP Server  
**Status**: ✅ ACTIVE - Installed and Configured  
**Official Documentation**: https://github.com/czlonkowski/n8n-mcp  
**Added**: 2025-07-12  
**Installation Date**: 2025-07-12  
**Installation Method**: NPX (comando: `npx n8n-mcp`)  
**Context7 Trust Score**: 8.4 (310 code snippets available)

## Overview

A Model Context Protocol (MCP) server that provides AI assistants with comprehensive access to n8n node documentation, properties, and operations. This integration enables Claude to build n8n workflows more efficiently and accurately by providing direct access to n8n's extensive node library.

### Key Capabilities
- **Smart node search and discovery** - Find appropriate n8n nodes for specific tasks
- **Essential node property retrieval** - Access detailed configuration options for nodes
- **Configuration validation** - Validate workflow configurations before implementation
- **AI tool integration** - Seamless integration with Claude for workflow building
- **Workflow management tools** - Create, update, and manage n8n workflows

### Coverage Statistics
- **528 n8n nodes supported** - Comprehensive node library coverage
- **99% node property coverage** - Nearly complete property documentation
- **63.6% node operation coverage** - Extensive operation documentation
- **310 code snippets** - Available through Context7 MCP documentation

## Installation Methods

### Option 1: NPX (Recommended - Fastest)
```bash
# No installation required, runs directly
npx n8n-mcp
```

### Option 2: Docker Installation
```bash
# Pull the Docker image
docker pull ghcr.io/czlonkowski/n8n-mcp:latest

# Run as Docker container
docker run -p 3001:3001 ghcr.io/czlonkowski/n8n-mcp:latest
```

### Option 3: Local Development Installation
```bash
# Clone repository
git clone https://github.com/czlonkowski/n8n-mcp.git
cd n8n-mcp

# Install dependencies
npm install

# Build the project
npm run build
npm run rebuild

# Run the server
npm start
```

## Claude Code Configuration

### ✅ Current Configuration (ACTIVE with API Integration)
Successfully configured with n8n API access for full workflow management:
```bash
claude mcp add-json n8n-mcp '{"command": "npx", "args": ["n8n-mcp"], "env": {"N8N_API_URL": "http://localhost:3002", "N8N_API_KEY": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJlMGE1MTNmZi0wOGUwLTQyYTMtOGNjNy1jYjA1NGE0M2QyYmYiLCJpc3MiOiJuOG4iLCJhdWQiOiJwdWJsaWMtYXBpIiwiaWF0IjoxNzUyMjE5MDczfQ.QFL-dR331i8QTyJD_3KMWV7Wf57_doPM1DPpRZu22dk"}}' -s user
```

Current MCP configuration:
```json
{
  "n8n-mcp": {
    "command": "npx",
    "args": ["n8n-mcp"],
    "env": {
      "N8N_API_URL": "http://localhost:3002",
      "N8N_API_KEY": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJlMGE1MTNmZi0wOGUwLTQyYTMtOGNjNy1jYjA1NGE0M2QyYmYiLCJpc3MiOiJuOG4iLCJhdWQiOiJwdWJsaWMtYXBpIiwiaWF0IjoxNzUyMjE5MDczfQ.QFL-dR331i8QTyJD_3KMWV7Wf57_doPM1DPpRZu22dk"
    }
  }
}
```

**API Status**: ✅ Verified - Successfully connected to n8n instance  
**Available Workflows**: 3 existing workflows discovered  
**API Verification**: `curl -H "X-N8N-API-KEY: [key]" http://localhost:3002/api/v1/workflows` - Working



## Integration with Existing n8n Infrastructure

### Current n8n Setup in EC-Development
- **n8n Docker Service**: Running on port 3002 via EC-AI-Agent-Hub-v2.0
- **n8n Global Installation**: v1.101.1 available via npm
- **Database**: SQLite backend with persistent data storage
- **Configuration Path**: `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/n8n-sqlite/`

### API Key Configuration
To enable full workflow management, configure n8n API access:
1. Access n8n interface at `http://localhost:3002`
2. Go to Settings → n8n API
3. Generate new API key
4. Add to n8n-mcp configuration as `N8N_API_KEY`

## Available Tools

### Core Tools (Always Available)
- **Node Search**: Find appropriate n8n nodes for specific tasks
- **Node Documentation**: Get detailed information about node properties
- **Configuration Validation**: Validate node configurations before implementation
- **Property Lookup**: Access specific node property documentation

### ✅ Enhanced Tools (NOW ACTIVE with API)
- **Task Templates**: Access pre-built workflow templates
- **Workflow Validation**: Validate complete workflow structures
- **Best Practices**: Get n8n workflow optimization suggestions

### ✅ Management Tools (NOW ACTIVE with API)
- **Workflow Creation**: Create new n8n workflows programmatically
- **Workflow Updates**: Modify existing workflows
- **Workflow Deletion**: Remove workflows when no longer needed
- **Execution Management**: Monitor and control workflow executions
- **Workflow Discovery**: Access existing workflows (3 workflows currently available)

### Current Workflow Inventory
Based on API verification, the following workflows are available:
1. **EC-AI-Agent-Hub-v3.0 Complete Orchestration** - Multi-agent workflow with Langfuse integration
2. **Autonomous Agent Orchestration v3.0** - Autonomous execution workflow  
3. **EC-AI-Agent-Hub-v4.0** - Enhanced agent hub workflow

## Usage Examples

### Basic Node Discovery
```bash
# Find nodes for HTTP requests
search_node "HTTP request API call"

# Get detailed properties for HTTP Request node
get_node_properties "HTTP Request"
```

### Workflow Building
```bash
# Validate a workflow configuration
validate_workflow [workflow-json]

# Get template for common automation task
get_task_template "data synchronization"
```

### Integration with Claude Development
```bash
# When building automation workflows
1. Ask Claude: "use context7 for n8n webhook automation examples"
2. Use n8n-mcp to search for appropriate nodes
3. Validate configuration with n8n-mcp tools
4. Implement workflow through n8n interface
```

## Verification Commands

### Installation Verification
```bash
# Check if MCP server is running
claude mcp list | grep n8n-mcp

# Test MCP tools are available
/mcp

# Verify n8n-mcp appears in tool list
```

### Functional Verification
```bash
# Test node search functionality
mcp__n8n_mcp__search_node "HTTP"

# Test node property retrieval
mcp__n8n_mcp__get_node_properties "HTTP Request"

# Test configuration validation
mcp__n8n_mcp__validate_configuration [test-config]
```

### API Integration Verification
```bash
# Test n8n API connection (if configured)
curl -H "X-N8N-API-KEY: your-api-key" http://localhost:3002/api/v1/workflows

# Test workflow management tools
mcp__n8n_mcp__list_workflows
```

## Integration Points

### With Context7 MCP
- **Enhanced Documentation**: Context7 provides 310 n8n-mcp code snippets
- **Usage Patterns**: Context7 contains n8n workflow automation examples
- **Best Practices**: Combined documentation for comprehensive n8n development

### With Existing n8n Infrastructure
- **Direct API Access**: Connect to existing n8n instance at port 3002
- **Workflow Management**: Manage workflows in existing SQLite database
- **Data Integration**: Access existing workflow data and execution history

### With Claude Development Workflow
- **Workflow Planning**: Use for designing automation workflows
- **Configuration Assistance**: Get help with complex node configurations
- **Validation Support**: Verify workflows before implementation
- **Documentation**: Access comprehensive n8n node documentation

## Security Considerations

### API Key Security
- **Environment Variables**: Store n8n API key in environment variables
- **Access Control**: Limit API key permissions to necessary operations only
- **Key Rotation**: Regularly rotate n8n API keys
- **Local Development**: Keep API keys out of version control

### Network Security
- **Local Access**: n8n instance runs on localhost only (port 3002)
- **Firewall**: Ensure n8n port is not exposed externally
- **Authentication**: Use n8n's built-in authentication mechanisms
- **HTTPS**: Consider HTTPS for production deployments

## Troubleshooting

### Common Installation Issues
- **NPX Failures**: Ensure Node.js version compatibility (Node 16+)
- **Permission Issues**: Use appropriate permissions for global npm packages
- **Network Issues**: Check internet connectivity for NPX package downloads
- **Docker Issues**: Verify Docker is running and has sufficient resources

### MCP Connection Issues
- **Configuration Errors**: Validate JSON syntax in MCP configuration
- **Process Conflicts**: Check for conflicting processes on stdio
- **Environment Variables**: Verify all required environment variables are set
- **Log Analysis**: Check Claude logs for MCP connection errors

### API Integration Issues
- **API Key Invalid**: Verify n8n API key is correctly generated and configured
- **Network Connectivity**: Test direct access to n8n API endpoints
- **Permission Denied**: Check API key has sufficient permissions
- **Version Compatibility**: Ensure n8n version supports required API features

### Performance Issues
- **Memory Usage**: Monitor memory usage for large workflow operations
- **Response Times**: Check network latency between MCP server and n8n
- **Database Performance**: Monitor SQLite performance for large datasets
- **Log Levels**: Adjust log levels to reduce performance impact

## Value Proposition

As noted in the official documentation: **"Before MCP, I was translating. Now I'm composing. And that changes everything about how we can build automation."**

This integration transforms how Claude interacts with n8n from basic workflow translation to intelligent workflow composition with direct access to comprehensive node documentation and configuration options.

## Next Steps

1. **Installation**: Choose installation method and configure MCP server
2. **API Setup**: Configure n8n API key for full functionality
3. **Testing**: Verify all tools work correctly with existing n8n instance
4. **Integration**: Incorporate into existing Claude development workflows
5. **Documentation**: Update usage patterns in project-specific documentation

## MIT License

Licensed under MIT License - free for commercial and personal use.