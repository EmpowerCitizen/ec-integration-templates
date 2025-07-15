# MCP Servers Inventory

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/mcp-servers-inventory.md`  
**Created**: July 11, 2025  
**Purpose**: Complete inventory of all MCP-related files and configurations

## CORRECTED: Active MCP Servers Inventory
**Date Corrected**: July 11, 2025  
**Source**: Actual `/mcp` command output from user  
**Previous Error**: Missed 2 out of 9 active servers (22% error rate)

### Currently Active MCP Servers (12 total)
1. **context7** ✔ connected - Documentation lookup
2. **crawl4ai** ✔ connected - Web scraping and analysis  
3. **dart** ✔ connected - Dart project management
4. **desktop-commander** ✔ connected - Windows PC system access
5. **mermaid** ✔ connected - Diagram generation ⚠️ PREVIOUSLY MISSED
6. **n8n-mcp** ✔ connected - n8n workflow documentation and management 🆕 NEWLY INSTALLED with API
    - **Official Repository**: https://github.com/czlonkowski/n8n-mcp
    - **Context7 Trust Score**: 8.4 (310 code snippets available)
    - **Installation Method**: NPX (`npx n8n-mcp`)
    - **Installation Date**: 2025-07-12
    - **API Integration**: ✅ ACTIVE - Connected to localhost:3002
    - **Documentation**: `./n8n-mcp-integration.md`
    - **Coverage**: 528 n8n nodes, 99% node properties, 63.6% operations
    - **Workflows Available**: 3 existing workflows discovered
    - **Status**: ✅ ACTIVE - Full API Integration Configured
7. **playwright** ✔ connected - Browser automation
8. **sentry** ✔ connected - Error tracking and monitoring ⚠️ PREVIOUSLY MISSED  
9. **sequential-thinking** ✔ connected - Dynamic structured problem-solving 🆕 NEWLY ADDED
10. **supabase** ✔ connected - Database and backend services
11. **task-master-ai** ✔ connected - AI-powered task management and automation 🆕 FIXED 2025-07-14
    - **Official Repository**: https://github.com/eyaltoledano/claude-task-master
    - **Context7 Trust Score**: 9.6 (685 code snippets available)
    - **Installation Method**: NPX (`npx task-master-ai`)
    - **Installation Date**: 2025-07-14 (Fixed from previous failed configuration)
    - **Authentication**: ✅ Claude Max subscription OAuth (no API keys required)
    - **Documentation**: `./taskmaster-mcp-server-setup.md`
    - **Previous Issue**: Command mismatch - was `npx task-master-mcp`, fixed to `npx task-master-ai`
    - **Features**: PRD parsing, task breakdown, complexity analysis, multi-model support
    - **Status**: ✅ ACTIVE - OAuth Authentication Configured
12. **youtube-transcript** ✔ connected - YouTube video transcription

### Process Evidence from Systematic Discovery
**Total MCP Processes Discovered**: 40+ active processes across multiple terminals  
**Process Discovery Command**: `ps aux | grep -E "(mcp|context7|crawl4ai|dart|desktop-commander|mermaid|playwright|sentry|supabase|youtube)" | grep -v grep`

**Key Process Examples**:
- `/home/ec-xps/.nvm/versions/node/v22.17.0/bin/context7-mcp`
- `npm exec @playwright/mcp`
- `/home/ec-xps/.local/share/crawl4ai-mcp/.venv/bin/python3 main.py`
- `node /home/ec-xps/.npm/_npx/928e81b6ad344df4/node_modules/.bin/mermaid-mcp-server`
- `node /home/ec-xps/.npm/_npx/ea4b057b95c800cc/node_modules/.bin/sentry-mcp`

### NPX Configuration Standards (All Servers)
All MCP servers now use consistent NPX configuration patterns:
```json
{
  "context7": {"command": "npx", "args": ["-y", "@upstash/context7-mcp"]},
  "crawl4ai": {"command": "/home/ec-xps/.local/share/crawl4ai-mcp/run-mcp.sh"},
  "dart": {"command": "npx", "args": ["-y", "dart-mcp-server"]},
  "desktop-commander": {"command": "npx", "args": ["-y", "@wonderwhy-er/desktop-commander"]},
  "mermaid": {"command": "npx", "args": ["-y", "@peng-shawn/mermaid-mcp-server@latest"]},
  "n8n-mcp": {"command": "npx", "args": ["n8n-mcp"]},
  "playwright": {"command": "npx", "args": ["@playwright/mcp"]},
  "sentry": {"command": "npx", "args": ["-y", "@sentry/mcp-server@latest"]},
  "sequential-thinking": {"command": "npx", "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]},
  "supabase": {"command": "npx", "args": ["-y", "@supabase/mcp-server-supabase@latest"]},
  "task-master-ai": {"command": "npx", "args": ["task-master-ai"]},
  "youtube-transcript": {"command": "/home/ec-xps/.local/bin/uvx", "args": ["--from", "git+https://github.com/jkawamoto/mcp-youtube-transcript", "mcp-youtube-transcript"]}
}
```

### Discovery Method Success
- **Service-based discovery**: SUCCESSFUL - identified all 9 active servers
- **Process verification**: 40+ running processes confirm active status
- **Configuration validation**: All servers using standard NPX patterns
- **Connection verification**: All servers show "connected" status

## Configuration Files

### Workspace Configuration
- `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/context7-mcp-server-instructions.md`
- `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/context7-usage-guidelines.md`

### Project Configuration References
Files that reference .mcp.json configurations:
- `/home/ec-xps/EC-Development/CLAUDE.md`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/00-Setup/02-Setup-Claude TaskMaster and custom mcp container/01-Setup-Claude TaskMaster and custom mcp container conversation.md`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/00-Setup/02-Setup-Claude TaskMaster and custom mcp container/04-MCP-Server-Specifications.md`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/00-Setup/02-Setup-Claude TaskMaster and custom mcp container/docker-implementation/README.md`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/00-Setup/02-Setup-Claude TaskMaster and custom mcp container/03-15-Minute-Implementation-Guide.md`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/00-Setup/02-Setup-Claude TaskMaster and custom mcp container/02-Task-Master-Status-Reality-Check.md`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/install-n8n-mcp.js`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/10-docs/README-ClaudeCode-ClaudeTaskMaster-AgentOps-v1.0-to-v2.0.md`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/Assessment/EC-AI-Agent-Hub Platform Assessment Instructions.md`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/Assessment/2025.07.09-1202-platform-assessment/component-reality-check.sh`

## Binary/Executable Files  

### Context7 MCP Server
- Binary location: Available via NPX (`npx -y @upstash/context7-mcp`)
- Installation: Global NPM package
- Status: Active and configured

### Other MCP Servers
Based on project configurations, additional MCP servers may include:
- ✅ Task Master AI MCP server - ACTIVE (Fixed 2025-07-14)
- ✅ Desktop Commander MCP server - ACTIVE
- ✅ Playwright MCP server - ACTIVE  
- ✅ Supabase MCP server - ACTIVE

## Documentation Files

### Primary Documentation
- `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/context7-mcp-server-instructions.md` - Context7 setup and configuration
- `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/context7-usage-guidelines.md` - Usage patterns and guidelines
- `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/sequential-thinking-integration.md` - Sequential Thinking MCP integration guide
- `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/taskmaster-mcp-server-setup.md` - TaskMaster AI MCP setup and OAuth authentication 🆕 ADDED 2025-07-14
- `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/README-mcp-integration.md` - Integration overview

### Project-Specific Documentation
- Multiple project documentation files reference MCP configurations
- Task Master integration documentation
- Agent Hub MCP specifications

## Project-Specific Files

### EC-AI-Agent-Hub-v3.0
- MCP server specifications and implementation guides
- Task Master MCP integration
- Docker implementation with MCP

### EC-AI-Agent-Hub-v2.0  
- Platform assessment documentation
- MCP configuration references

## Template Files

### Project Templates
- MCP usage patterns inherited by all project templates
- Standard MCP configuration references
- Integration guidelines for new projects

## Integration Relationships

### Related Integration Methods
- **n8n**: MCP server for n8n workflow automation
- **CLI**: CLI-based MCP server management
- **API**: MCP servers providing API access
- **Webhooks**: MCP servers handling webhook events

### Configuration Hierarchy
1. Global MCP configuration (user-level)
2. Workspace MCP patterns (EC-Development)
3. Project-specific .mcp.json files
4. Local user preferences

---

*Last Updated: July 11, 2025*  
*Part of the Integration Methods documentation suite*