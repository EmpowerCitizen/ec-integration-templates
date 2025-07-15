# MCP (Model Context Protocol) Integration Overview

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/README-mcp-integration.md`  
**Created**: July 11, 2025  
**Purpose**: Overview of MCP server integrations and usage patterns

## What is MCP?

MCP (Model Context Protocol) is a standard that allows AI assistants to securely access external tools and data sources. In our environment, MCP servers provide specialized capabilities like documentation access, development tools, and automation.

## Active MCP Servers

### Context7 MCP Server ✅
- **Purpose**: Up-to-date documentation access for programming libraries
- **Status**: Active and configured
- **Primary Use**: `use context7 for [technology] [specific topic]`
- **Libraries**: React, TypeScript, n8n, Docker, Node.js, and 1000+ others

### Other MCP Servers
See `mcp-servers-inventory.md` for complete list of configured servers.

## Usage Patterns

### Context7 Documentation Access
```bash
# Standard pattern
use context7 for [technology] [specific topic]

# Examples
use context7 for React hooks documentation
use context7 for n8n workflow automation examples
use context7 for Docker compose configuration
```

### MCP Server Management
```bash
# List active servers
claude mcp list

# Add new server
claude mcp add-json [name] '[config]'

# Remove server
claude mcp remove [name]
```

## Configuration Files

### Project-Level Configuration
- `.mcp.json` files at project root
- Project-specific server configurations
- Team-shared via git

### User-Level Configuration  
- Cross-project MCP server access
- Personal development preferences
- Private to user account

## Integration Guidelines

1. **Documentation First**: Always try Context7 before other sources
2. **Workspace Standards**: Follow EC-Development workspace MCP usage patterns
3. **Project Templates**: All new projects inherit MCP guidelines
4. **Consistent Usage**: Use standard patterns across all projects

## File References

- **Configuration Guide**: `context7-mcp-server-instructions.md`
- **Usage Guidelines**: `context7-usage-guidelines.md` 
- **Complete Inventory**: `mcp-servers-inventory.md`

## Related Integration Methods

- **CLI**: GitHub CLI and other command-line tools
- **API**: REST API configurations and patterns
- **n8n**: Workflow automation integration
- **Webhooks**: Event-driven integrations

---

*Part of the Integration Methods documentation suite in `.claude/integration-methods/`*