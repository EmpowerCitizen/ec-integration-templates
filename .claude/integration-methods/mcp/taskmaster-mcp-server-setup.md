# TaskMaster AI MCP Server Setup Guide
# Version: v1.2-2025-07-15
# Status: ❌ FAILED - Limited Functionality Available

## ⚠️ IMPORTANT: Both MCP and SDK Approaches Have Issues

**Testing Status (2025-07-15):**
- ❌ **TaskMaster MCP Server**: Failed with FastMCP protocol errors
- ⚠️ **TaskMaster Claude Code SDK**: Partial - Non-AI features work, AI features fail
- ❌ **AI Features**: Known bug in TaskMaster v0.19.0+ (GitHub issues #928, #963)
- ✅ **Non-AI Features**: All task management functions working correctly

**Error Details**:
- MCP: "FastMCP warning: could not infer client capabilities" and "MCP session missing required sampling capabilities"
- SDK: "Claude Code process exited with code 1" when using AI-powered features

**Current Workaround**: 
- Use CLI directly for non-AI task management features
- Wait for TaskMaster fix for AI features (issues being tracked on GitHub)

---

## Overview (Historical Documentation)

TaskMaster AI provides a comprehensive Model Context Protocol (MCP) server for intelligent task management and automation. It was intended to integrate seamlessly with Claude Code CLI using OAuth authentication with Claude Max subscription - **no paid per-token API keys required**.

## Key Features

- **OAuth Authentication**: Uses Claude Max subscription for authentication (no additional API costs)
- **Intelligent Task Management**: AI-powered task breakdown, complexity analysis, and dependency tracking  
- **PRD Parsing**: Automatically generates structured tasks from Product Requirements Documents
- **Multi-Model Support**: Supports various AI providers (Claude, OpenAI, Gemini, Perplexity, etc.)
- **CLI Integration**: Works seamlessly with Claude Code and other development tools

## Installation Status

**Current Status**: ✅ **INSTALLED AND CONFIGURED**
- **Package**: `task-master-ai` 
- **Version**: 0.20.0
- **Installation Type**: ✅ **Global Installation**
- **Installation Location**: `/home/ec-xps/.nvm/versions/node/v22.17.0/lib/node_modules/task-master-ai/`
- **CLI Binary Path**: `/home/ec-xps/.nvm/versions/node/v22.17.0/bin/task-master`
- **MCP Server Binary Path**: `/home/ec-xps/.nvm/versions/node/v22.17.0/bin/task-master-ai`
- **MCP Server**: Properly configured as `npx task-master-ai`
- **Authentication**: OAuth with Claude Max subscription
- **Configuration Date**: 2025-07-14

### Binary Symlinks
```bash
# CLI command
/home/ec-xps/.nvm/versions/node/v22.17.0/bin/task-master -> ../lib/node_modules/task-master-ai/bin/task-master.js

# MCP server command 
/home/ec-xps/.nvm/versions/node/v22.17.0/bin/task-master-ai -> ../lib/node_modules/task-master-ai/mcp-server/server.js

# Legacy MCP command (also available)
/home/ec-xps/.nvm/versions/node/v22.17.0/bin/task-master-mcp -> ../lib/node_modules/task-master-ai/mcp-server/server.js
```

## MCP Server Configuration

### Correct Configuration (Fixed 2025-07-14)

```bash
claude mcp add task-master-ai -c "npx task-master-ai"
```

### Previous Issue (RESOLVED)
- **Problem**: MCP was configured as `npx task-master-mcp` (incorrect command)
- **Solution**: Changed to `npx task-master-ai` (correct command)
- **Root Cause**: Command mismatch between package name and execution command

## Authentication Setup

### Claude Max Subscription OAuth (Recommended)

TaskMaster supports **OAuth authentication with Claude Max subscription**:

1. **No API Keys Required**: Uses your existing Claude Max subscription
2. **Automatic Authentication**: Claude Code CLI authentication is used automatically
3. **No Additional Costs**: No per-token charges when using Claude Max OAuth

### Configuration for Claude Code

```json
{
  "models": {
    "main": {
      "provider": "claude-code",
      "modelId": "sonnet", 
      "maxTokens": 64000,
      "temperature": 0.2
    },
    "research": {
      "provider": "claude-code", 
      "modelId": "opus",
      "maxTokens": 32000,
      "temperature": 0.1
    },
    "fallback": {
      "provider": "claude-code",
      "modelId": "sonnet",
      "maxTokens": 64000, 
      "temperature": 0.2
    }
  }
}
```

### Optional API Keys (Alternative)

If not using Claude Max OAuth, you can configure API keys:

```bash
# In .env file (optional)
ANTHROPIC_API_KEY=your_key_here
PERPLEXITY_API_KEY=your_key_here  # For research features
OPENAI_API_KEY=your_key_here
GOOGLE_API_KEY=your_key_here
# Additional providers as needed
```

## Available MCP Tools

TaskMaster provides comprehensive MCP tools for project management:

### Core Tools
- `initialize_project` - Initialize TaskMaster in current project
- `parse_prd` - Generate tasks from PRD documents  
- `get_tasks` - List all tasks with status
- `next_task` - Get next available task
- `get_task` - Show detailed task information
- `set_task_status` - Update task status

### Task Management
- `add_task` - Create new tasks with AI assistance
- `expand_task` - Break tasks into subtasks
- `update_task` - Modify existing tasks
- `update_subtask` - Add implementation notes
- `analyze_project_complexity` - Analyze task complexity

### Configuration
- `help` - Show available commands
- Model configuration and setup tools

## CLI Usage Examples

### Basic Workflow
```bash
# Initialize TaskMaster
task-master init

# Parse PRD to generate tasks
task-master parse-prd .taskmaster/docs/prd.txt

# Get next task to work on  
task-master next

# View task details
task-master show 1.2

# Update task status
task-master set-status --id=1.2 --status=done
```

### Model Configuration
```bash
# Interactive setup
task-master models --setup

# Set specific models
task-master models --set-main claude-3-5-sonnet-20241022
task-master models --set-research perplexity-llama-3.1-sonar-large-128k-online
```

## Integration with Claude Code

### Tool Allowlist Configuration

Add to `.claude/settings.json`:

```json
{
  "allowedTools": [
    "Edit",
    "Bash(task-master *)",
    "Bash(git commit:*)",
    "Bash(git add:*)", 
    "Bash(npm run *)",
    "mcp__task_master_ai__*"
  ]
}
```

### Custom Slash Commands

Create `.claude/commands/taskmaster-next.md`:

```markdown
Find the next available Task Master task and show its details.

Steps:
1. Run `task-master next` to get the next task
2. If a task is available, run `task-master show <id>` for full details  
3. Provide a summary of what needs to be implemented
4. Suggest the first implementation step
```

## Troubleshooting

### Common Issues

#### 1. MCP Server Failed to Start
**Symptoms**: `✘ failed` status in MCP list
**Cause**: Incorrect command configuration
**Solution**: Ensure using `npx task-master-ai` not `npx task-master-mcp`

#### 2. Authentication Issues  
**Symptoms**: API key errors or authentication failures
**Solution**: 
- Use Claude Max subscription OAuth (recommended)
- Or ensure API keys are properly configured in environment

#### 3. Package Not Found
**Symptoms**: `command not found` errors
**Solution**: Install package globally
```bash
npm install -g task-master-ai
```

### Verification Steps

1. **Check Global Installation**:
   ```bash
   which task-master
   # Should show: /home/ec-xps/.nvm/versions/node/v22.17.0/bin/task-master
   
   npm list -g task-master-ai
   # Should show: task-master-ai@0.20.0
   ```

2. **Check MCP Configuration**:
   ```bash
   claude mcp list
   # Should show: task-master-ai: npx task-master-ai
   ```

3. **Test Package Installation**:
   ```bash
   npx task-master-ai --help
   # Should show MCP connection messages
   ```

4. **Test CLI Functionality**:
   ```bash
   task-master list
   # Should show project tasks if in a TaskMaster-enabled project
   ```

5. **Verify Claude Authentication**:
   ```bash
   claude
   # Should be authenticated with Claude Max subscription
   ```

## Integration with Existing Workflow

### With EC-Development Workspace
- **Auto-Execute**: TaskMaster follows existing auto-execute behaviors
- **Context7 Integration**: Use Context7 first for documentation, then TaskMaster for implementation
- **Sequential Thinking**: All TaskMaster operations use sequential thinking MCP
- **No Lying Policy**: TaskMaster cannot monitor other sessions, only direct task management

### Multi-Agent Coordination
- **Claude Squad**: TaskMaster provides task breakdown for multi-agent workflows
- **N8N Integration**: Tasks can be distributed through N8N workflows
- **Git Worktrees**: Support for parallel development with multiple Claude sessions

## Documentation References

- **Official Repository**: https://github.com/eyaltoledano/claude-task-master
- **Context7 Documentation**: Available via Context7 MCP server
- **Installation Guide**: Package includes comprehensive documentation
- **MCP Protocol**: Full MCP integration with FastMCP framework

## Status Summary

**Installation**: ✅ Complete  
**Configuration**: ✅ Corrected (2025-07-14)  
**Authentication**: ✅ Claude Max OAuth  
**Integration**: ✅ EC-Development Workspace  
**Documentation**: ✅ This guide  

TaskMaster AI MCP server is now properly configured and ready for use with Claude Code CLI.