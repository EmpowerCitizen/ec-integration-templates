# Langfuse MCP Integration

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/langfuse-mcp-integration.md`  
**Created**: 2025-07-12  
**Purpose**: Complete integration guide for Langfuse MCP Server with Claude Code  
**Status**: ✅ ACTIVE - Global MCP Server Configuration

## Overview

Langfuse MCP Server provides comprehensive observability and monitoring for AI agents through the Model Context Protocol. This integration enables real-time trace logging, performance monitoring, and truth verification directly within Claude Code sessions.

## Integration Method Details

### Protocol
**Model Context Protocol (MCP)** - Standardized protocol for AI assistant tool integration

### Execution Method
**NPX Standardization** - Uses `npx` command for consistent execution pattern with other MCP servers

### Configuration Location
**Global**: `/home/ec-xps/.claude.json` - mcpServers section

### Server Location
**Path**: `/home/ec-xps/.local/share/langfuse-mcp-server/`

## Configuration

### Global MCP Configuration
```json
{
  "mcpServers": {
    "langfuse": {
      "type": "stdio",
      "command": "npx",
      "args": [
        "-y",
        "/home/ec-xps/.local/share/langfuse-mcp-server/server.js"
      ],
      "env": {
        "LANGFUSE_PUBLIC_KEY": "pk-lf-e3553786-3aa2-4487-b489-c189e6918ef1",
        "LANGFUSE_SECRET_KEY": "sk-lf-38f55fbf-bde0-4d69-aec0-7be815c8c05a",
        "LANGFUSE_URL": "http://localhost:3000"
      }
    }
  }
}
```

### Environment Variables
- **LANGFUSE_PUBLIC_KEY**: Public API key for Langfuse authentication
- **LANGFUSE_SECRET_KEY**: Secret API key for Langfuse authentication  
- **LANGFUSE_URL**: Base URL for Langfuse instance (default: http://localhost:3000)

### Dependencies
- **Node.js**: >=18.0.0
- **@modelcontextprotocol/sdk**: ^1.0.0
- **langfuse**: ^3.0.0

## Available MCP Tools

### 1. Workflow Management Tools

#### `trace_begin`
**Purpose**: Start trace logging when PRD creation begins
**Usage**: Begin observability session for AI agent workflows
```javascript
{
  "session_id": "unique-session-id",
  "user_id": "ec-xps", 
  "project_name": "project-name"
}
```

#### `complete_trace`
**Purpose**: Complete trace with analytics and final validation
**Usage**: Finalize observability session with performance metrics
```javascript
{
  "session_id": "session-id",
  "final_outcome": "success|failure|partial",
  "performance_metrics": {...},
  "validation_summary": {...}
}
```

### 2. Task Management Tools

#### `log_task_creation`
**Purpose**: Log task creation from TaskMaster MCP Server
**Usage**: Track task breakdown and creation events
```javascript
{
  "session_id": "session-id",
  "tasks": [...],
  "task_breakdown": {...}
}
```

### 3. Agent Coordination Tools

#### `track_agent_activity`
**Purpose**: Track agent activities during Claude Code orchestration
**Usage**: Monitor multi-agent coordination and execution
```javascript
{
  "session_id": "session-id",
  "agent_action": "code_generation|testing|deployment",
  "agent_type": "frontend|backend|testing",
  "context": {...}
}
```

### 4. Validation and Quality Tools

#### `validate_output`
**Purpose**: Validate outputs from agent execution
**Usage**: Quality assurance for generated code and content
```javascript
{
  "session_id": "session-id",
  "output_type": "code|test|documentation",
  "output_content": "generated content",
  "validation_rules": [...]
}
```

#### `verify_truth`
**Purpose**: Enforce no lying policy and truth verification
**Usage**: Compliance checking and capability validation
```javascript
{
  "session_id": "session-id",
  "claim": "statement to verify",
  "evidence": {...},
  "verification_type": "capability|monitoring|access"
}
```

### 5. Analytics and Reporting Tools

#### `get_traces`
**Purpose**: Retrieve trace history and analytics
**Usage**: Access historical observability data
```javascript
{
  "session_id": "optional-filter",
  "limit": 10,
  "filter": {...}
}
```

#### `get_performance`
**Purpose**: Get performance metrics and analytics
**Usage**: Performance monitoring and optimization insights
```javascript
{
  "session_id": "optional-filter",
  "metric_type": "latency|throughput|errors"
}
```

#### `check_compliance`
**Purpose**: Check compliance with truth verification policies
**Usage**: Audit compliance with no lying policy and other standards
```javascript
{
  "session_id": "session-id",
  "compliance_type": "no_lying|capability|access"
}
```

## Docker Infrastructure Integration

### Docker Project
**Name**: `langfuse-pgsql` (updated from langfuse-v2)
**Location**: `/home/ec-xps/EC-Development/Applications/langfuse/deployment/`

### Services
- **PostgreSQL**: Port 5432 - Primary database
- **ClickHouse**: Ports 8123/9000 - Analytics database  
- **Redis**: Port 6379 - Cache and session storage
- **MinIO**: Ports 9001/9091 - Object storage (S3-compatible)
- **Langfuse Web**: Port 3000 - Dashboard and API

### Network Configuration
**Internal**: `langfuse-pgsql-network` (Docker bridge network)
**External Access**: `http://localhost:3000` for MCP server connectivity

## Usage Patterns

### Basic Workflow Tracing
```javascript
// 1. Start trace
mcp_langfuse_trace_begin({
  session_id: "workflow-2025-07-12-001",
  user_id: "ec-xps",
  project_name: "langfuse-integration"
})

// 2. Track activities
mcp_langfuse_track_agent_activity({
  session_id: "workflow-2025-07-12-001",
  agent_action: "mcp_server_configuration",
  agent_type: "integration",
  context: { server: "langfuse", status: "configuring" }
})

// 3. Complete trace
mcp_langfuse_complete_trace({
  session_id: "workflow-2025-07-12-001",
  final_outcome: "success",
  performance_metrics: { duration: "5m", steps: 5 }
})
```

### Truth Verification
```javascript
mcp_langfuse_verify_truth({
  session_id: "compliance-check-001",
  claim: "MCP server can monitor other sessions",
  verification_type: "capability",
  evidence: null
})
// Expected result: violation detected (no lying policy)
```

### Performance Monitoring
```javascript
mcp_langfuse_get_performance({
  session_id: "all",
  metric_type: "latency"
})
```

## Installation and Setup

### 1. Server Installation
```bash
# Create server directory
mkdir -p /home/ec-xps/.local/share/langfuse-mcp-server

# Install dependencies
cd /home/ec-xps/.local/share/langfuse-mcp-server
npm install

# Make executable
chmod +x server.js
```

### 2. Global Configuration
Add to `/home/ec-xps/.claude.json` in mcpServers section (see Configuration section above)

### 3. Langfuse Instance
```bash
# Start Langfuse services with new project name
cd /home/ec-xps/EC-Development/Applications/langfuse/deployment
docker-compose -f docker-compose-v3-fixed.yml up -d
```

### 4. Verification
```bash
# Check MCP server availability
claude mcp list

# Test Langfuse connectivity
curl -I http://localhost:3000

# Verify Docker services
docker ps --filter "name=langfuse-*"
```

## Integration with Other Methods

### MCP Server Coordination
- **TaskMaster**: Logs task creation events
- **Sequential Thinking**: Tracks reasoning processes
- **Playwright**: Monitors browser automation activities

### Webhook Integration
- **Event Triggers**: Langfuse events can trigger n8n workflows
- **Status Updates**: Webhook notifications for trace completion

### CLI Tool Integration
- **GitHub CLI**: Track repository management activities
- **Docker Commands**: Monitor container lifecycle events

## Troubleshooting

### Common Issues

#### 1. MCP Server Not Found
**Symptoms**: MCP server not listed in `claude mcp list`
**Solutions**:
- Verify NPX path accessibility
- Check file permissions on server.js
- Restart Claude Code to reload configuration

#### 2. Langfuse Connection Failed
**Symptoms**: Connection errors in MCP tool responses
**Solutions**:
- Verify Docker services are running: `docker ps`
- Check port 3000 accessibility: `curl http://localhost:3000`
- Validate environment variables in MCP configuration

#### 3. Authentication Errors
**Symptoms**: API key validation failures
**Solutions**:
- Verify API keys in `/home/ec-xps/.claude.json`
- Check Langfuse dashboard for key validity
- Regenerate keys if necessary

### Configuration Validation
```bash
# Check MCP server configuration
cat /home/ec-xps/.claude.json | jq '.mcpServers.langfuse'

# Verify server executable
npx /home/ec-xps/.local/share/langfuse-mcp-server/server.js --help

# Test Docker services
(cd /home/ec-xps/EC-Development/Applications/langfuse/deployment && docker-compose -f docker-compose-v3-fixed.yml ps)
```

## Security Considerations

### API Key Management
- **Global Configuration**: Keys stored in `/home/ec-xps/.claude.json`
- **Environment Variables**: Passed securely to MCP server process
- **Rotation**: Regular key rotation recommended

### Network Security
- **Internal Access**: Docker services communicate via internal network
- **External Access**: Only port 3000 exposed for dashboard access
- **Authentication**: API keys required for all Langfuse operations

### Truth Verification
- **No Lying Policy**: Automated detection of capability false claims
- **Compliance Logging**: All verification attempts logged
- **Policy Enforcement**: Violations flagged and reported

## Performance Considerations

### Resource Usage
- **Memory**: ~50MB per MCP server instance
- **CPU**: Minimal overhead for trace logging
- **Storage**: Traces stored in PostgreSQL and ClickHouse

### Optimization
- **Trace Batching**: Multiple events batched for efficiency
- **Connection Pooling**: Langfuse client connection reuse
- **Async Operations**: Non-blocking trace operations

## Integration Requirements Met

### Following Integration-Methods Standards
1. **✅ Integration Type**: MCP (Model Context Protocol)
2. **✅ Official Source**: https://modelcontextprotocol.io/ + Langfuse documentation
3. **✅ Configuration Paths**: `/home/ec-xps/.claude.json`, `/home/ec-xps/.local/share/langfuse-mcp-server/`
4. **✅ Active Status**: MCP server active in global configuration
5. **✅ Documentation**: This file created within 24 hours of implementation
6. **✅ Security Patterns**: API key management, network isolation, compliance checking

## Maintenance

### Regular Tasks
- **Monitor Performance**: Check trace processing latency
- **Verify Connectivity**: Ensure Langfuse instance health
- **Update Dependencies**: Keep MCP SDK and Langfuse client current
- **Rotate Keys**: Regular API key rotation

### Backup and Recovery
- **Configuration Backup**: Regular backup of `.claude.json`
- **Trace Data**: PostgreSQL backup for historical traces
- **Server Code**: Version control for MCP server implementation

---

**Status**: ✅ ACTIVE - Fully integrated and operational  
**Last Updated**: 2025-07-12  
**Next Review**: 2025-07-19  
**Contact**: EC-Development workspace integration methods