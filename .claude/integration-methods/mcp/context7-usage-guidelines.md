# Context7 Usage Guidelines
# Version: v1.0-2025-07-11
# Global Enforcement: ALL Claude Code Sessions

## File Location Update
**Current Path**: `/home/ec-xps/EC-Development/.claude/integration-methods/mcp/context7-usage-guidelines.md`  
**Previous Paths**: 
- `/home/ec-xps/EC-Development/.claude/mcp/context7-usage-guidelines.md` (July 11, 2025)
- `/home/ec-xps/EC-Development/MCP/context7-usage-guidelines.md` (Original)

**Final Migration Date**: July 11, 2025  
**Reason**: Organized under standard "integration-methods" terminology for Claude-specific integration configurations

## Overview
Context7 is now the **PRIMARY DOCUMENTATION SOURCE** for all Claude Code sessions. This guide ensures consistent usage patterns across all hierarchy levels (Global → Workspace → Project → Local).

## Core Usage Pattern

### Standard Format
```bash
use context7 for [technology] [specific topic]
```

**Key Requirements:**
- **ALWAYS** use "use context7 for..." phrasing
- **SPECIFIC** queries work better than general ones
- **TECHNOLOGY** should be explicit (React, n8n, Docker, etc.)
- **TOPIC** should be focused (hooks, workflows, configuration, etc.)

## Usage Priority Hierarchy

### 1. **First Choice: Context7**
- All documentation queries
- API references
- Code examples
- Best practices
- Integration patterns
- Configuration guides

### 2. **Second Choice: Web Search**
- Only when Context7 lacks specific information
- Use latest/current date qualifiers
- Follow search behavior rules

### 3. **Third Choice: Official Docs**
- Fallback for Context7 gaps
- Cross-reference with Context7 findings
- Supplement Context7 information

### 4. **Last Resort: Manual Research**
- Complex implementation details
- Custom solutions
- Experimental features

## Technology-Specific Patterns

### n8n Workflow Automation
```bash
# Workflow examples
use context7 for n8n workflow automation examples

# API integration
use context7 for n8n API configuration documentation

# Trigger setup
use context7 for n8n scheduling and trigger configuration

# Error handling
use context7 for n8n error handling patterns
```

### React/TypeScript Development
```bash
# Component patterns
use context7 for React component patterns

# Hook usage
use context7 for React hooks documentation

# TypeScript integration
use context7 for TypeScript interface definitions

# State management
use context7 for React state management patterns
```

### Node.js/Express Development
```bash
# Server configuration
use context7 for Node.js Express configuration

# API development
use context7 for Express API authentication patterns

# Middleware
use context7 for Express middleware best practices

# Database integration
use context7 for Node.js database integration patterns
```

### Docker & DevOps
```bash
# Container setup
use context7 for Docker compose configuration

# Best practices
use context7 for Docker compose best practices

# Multi-service setup
use context7 for Docker multi-container applications

# Production deployment
use context7 for Docker production deployment patterns
```

### Python Development
```bash
# FastAPI setup
use context7 for Python FastAPI integration patterns

# API development
use context7 for Python REST API best practices

# Data processing
use context7 for Python data processing patterns

# Automation
use context7 for Python automation scripts
```

## Common Anti-Patterns to Avoid

### ❌ Incorrect Usage
```bash
# Too vague
use context7 for React

# Wrong phrasing
context7 help with React hooks

# Missing technology
use context7 for authentication

# Too general
use context7 for documentation
```

### ✅ Correct Usage
```bash
# Specific and clear
use context7 for React hooks documentation

# Technology + topic
use context7 for Express API authentication patterns

# Focused query
use context7 for Docker compose configuration

# Implementation-focused
use context7 for n8n workflow automation examples
```

## Integration with Development Workflow

### Before Coding
1. **Research Phase**: Start with Context7 for documentation
2. **Pattern Research**: Look for implementation examples
3. **Configuration**: Find setup and configuration guides
4. **Best Practices**: Get recommendations and patterns

### During Implementation
1. **API References**: Use Context7 for syntax and parameters
2. **Error Handling**: Get troubleshooting patterns
3. **Integration Examples**: Find working code examples
4. **Configuration**: Get deployment and setup guides

### Code Review & Optimization
1. **Best Practices**: Validate against Context7 recommendations
2. **Performance**: Find optimization patterns
3. **Security**: Get security best practices
4. **Maintenance**: Find maintenance and monitoring patterns

## Project Template Integration

### New Project Setup
All new projects automatically inherit Context7 usage guidelines:

```markdown
## Documentation Strategy
**Primary Source**: Context7 MCP Server
**Usage Pattern**: `use context7 for [technology] [topic]`
**Priority**: Context7 → Web Search → Official Docs → Manual Research
```

### CLAUDE.md Template Addition
```markdown
## Context7 Documentation Guidelines
- **ALWAYS** use Context7 first for documentation queries
- **Pattern**: `use context7 for [technology] [specific topic]`
- **Available Libraries**: [list project-specific libraries]
- **Priority**: Context7 → Web → Official → Manual
```

## Available Libraries (July 2025)

### Major Technology Coverage
- **n8n**: Official docs + enhanced examples (7,001 code snippets)
- **React**: Component patterns, hooks, state management
- **Node.js**: Express, FastAPI, automation patterns
- **TypeScript**: Interface definitions, best practices
- **Docker**: Compose configuration, deployment patterns
- **Python**: FastAPI, automation, data processing
- **Git/GitHub**: Workflow automation, CI/CD patterns
- **And 1000+ additional libraries**

### Specialized Documentation
- API authentication patterns
- Database integration guides
- DevOps and deployment strategies
- Testing frameworks and patterns
- Security best practices
- Performance optimization guides

## Quality Assurance

### Response Validation
- Context7 provides current, version-specific documentation
- Multiple libraries ensure comprehensive coverage
- Official sources prioritized for authority
- Enhanced examples provide practical implementation

### Continuous Improvement
- Monitor Context7 library additions
- Update guidelines based on new technology coverage
- Refine query patterns for better results
- Document successful usage patterns

## Troubleshooting

### Context7 Not Responding
1. Check MCP server status: `claude mcp list`
2. Verify Context7 is active
3. Try alternative phrasing
4. Fall back to web search if necessary

### Insufficient Information
1. Try more specific query
2. Break down into smaller topics
3. Use multiple Context7 queries
4. Supplement with web search

### Integration Issues
1. Verify Context7 configuration in CLAUDE.md
2. Check project template inheritance
3. Validate usage pattern format
4. Update guidelines if needed

## Enforcement Mechanisms

### Global Level
- Context7 prioritized in global CLAUDE.md
- Usage guidelines enforced across all sessions
- Standard patterns documented globally
- Search behavior rules integration

### Workspace Level
- Context7 usage mandatory for EC-Development
- Project templates auto-inherit guidelines
- Workspace-specific patterns documented
- Auto-execute behaviors enforce usage

### Project Level
- Context7 guidelines in all project CLAUDE.md
- Technology-specific patterns documented
- Local customization within guidelines
- Consistent usage across project team

### Session Level
- Context7 usage suggested automatically
- Pattern validation in responses
- Fallback hierarchy enforced
- Quality assurance for documentation queries

---

## Implementation Checklist

- [ ] Global CLAUDE.md updated with Context7 priority
- [ ] Workspace CLAUDE.md includes Context7 guidelines
- [ ] Project templates updated with Context7 patterns
- [ ] Usage guidelines documented and accessible
- [ ] Technology-specific patterns defined
- [ ] Quality assurance mechanisms in place
- [ ] Troubleshooting procedures documented
- [ ] Enforcement mechanisms active

**Status**: Complete Context7 integration across all hierarchy levels
**Date**: July 11, 2025
**Version**: v1.0 - Initial implementation