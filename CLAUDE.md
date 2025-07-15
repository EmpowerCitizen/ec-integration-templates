# EC Integration Templates - Claude Code Project Configuration
# Version: v1.0-2025-07-15
# Project Type: Shared Templates and Standards Repository

## Multi-Repo Configuration
**Repository**: empowercitizen/ec-integration-templates
**Location**: ~/Development/Shared/ec-integration-templates
**GitHub**: https://github.com/EmpowerCitizen/ec-integration-templates

## 🚨 CRITICAL: NO LYING POLICY
**Established**: 2025-07-05
**Status**: ENFORCED ACROSS ALL HIERARCHY LEVELS
**Hierarchy**: Global → Workspace → Project → Local

### Zero Tolerance for False Claims
- **NEVER** claim capabilities you don't have
- **NEVER** pretend to monitor other terminals/sessions  
- **NEVER** make up monitoring abilities or system access
- **NEVER** lie about what you can see or do
- **NEVER** claim to track processes outside this session
- **NEVER** pretend to have real-time visibility into other applications

### Honest Capability Statement
#### What You CAN Do
- Read files in this session's file system
- Execute commands in this terminal only
- Analyze outputs shared by the user
- Check file system changes within accessible directories
- Use available tools (Read, Edit, Bash, etc.) in this session
- Access MCP servers configured for this session

#### What You CANNOT Do
- Monitor other Claude CLI sessions or terminals
- See into other applications, windows, or processes
- Track real-time activity outside this session
- Access other users' sessions or terminals
- Monitor network activity or external systems
- See desktop applications or GUI interfaces

### Enforcement Mechanisms
**Hook Event**: Stop (validates complete Claude responses)
**Hook Script**: `/home/ec-xps/.claude/hooks/no_lying_policy_validator.sh`
**Status**: ✅ TESTED and VERIFIED blocking false claims
**Verification Date**: 2025-07-12 with actual violation test
**Test Result**: Successfully blocked false monitoring claims with exit code 2

**Remember**: "I cannot monitor X" is always better than falsely claiming "I can track X"

## Sequential Thinking MCP Requirement (Project Level)
**Inherited from:** Global and Workspace CLAUDE.md hierarchy
**Established:** 2025-07-12
**Status:** MANDATORY FOR ALL TEMPLATE DEVELOPMENT
**Scope:** EVERY PROMPT MUST USE SEQUENTIAL THINKING

### Project Sequential Thinking Implementation
- **MANDATORY** for all template and standards development work
- **APPLIES TO** template creation, standards documentation, pattern development
- **AUTO-EXECUTE** sequential thinking before all implementations
- **INTEGRATION** with multi-repo workflows and Claude Code standards

### Project Specific Sequential Thinking Usage
```bash
# Template design planning
mcp__sequential-thinking__sequentialthinking

# Standards documentation
mcp__sequential-thinking__sequentialthinking

# Pattern development analysis
mcp__sequential-thinking__sequentialthinking
```

### Project Enforcement Rules
1. **ALL template creation** must use sequential thinking for planning
2. **ALL standards development** requires sequential thinking analysis
3. **ALL pattern documentation** needs sequential thinking validation
4. **ALL template testing** must start with sequential thinking
5. **ALL cross-repo consistency** requires sequential thinking design

### Auto-Execute Project Integration
- **NEVER ask** permission to use sequential thinking
- **ALWAYS engage** sequential thinking as first step in responses
- **INTEGRATE** with existing auto-execute behaviors
- **MAINTAIN** consistency with hierarchy requirements

**PROJECT RULE:** Every prompt for EC Integration Templates MUST use sequential thinking

## Auto-Execute Behaviors
Based on proven results from the EC ecosystem:
- **ALWAYS** validate CLAUDE.md hierarchy after any changes
- **ALWAYS** update documentation immediately when implementing features
- **ALWAYS** follow official Anthropic hierarchy structure
- **ALWAYS** implement industry best practices automatically
- **ALWAYS** verify capabilities before claiming they exist
- **ALWAYS** prioritize working code over comprehensive documentation
- **NEVER** ask about CLAUDE.md updates - just maintain them
- **NEVER** leave documentation outdated after system changes
- **NEVER** make claims about system capabilities without testing first
- **NEVER** create theoretical solutions without proven results
- **NEVER** over-engineer simple solutions

## Project Overview
This repository contains standardized templates, patterns, and configuration files for maintaining consistency across the multi-repository EC ecosystem. It serves as the single source of truth for integration standards.

## Purpose and Goals
- **Standardization**: Ensure consistent patterns across all EC repositories
- **Efficiency**: Provide ready-to-use templates for common integration scenarios
- **Documentation**: Maintain central documentation for integration methods
- **Quality**: Enforce best practices through standardized templates
- **Reusability**: Create once, use across multiple projects

## Repository Structure
```
ec-integration-templates/
├── claude-configs/
│   ├── project-templates/      # CLAUDE.md templates for different project types
│   │   ├── company-project.md
│   │   ├── client-project.md
│   │   ├── library-project.md
│   │   └── application-project.md
│   ├── integration-methods/    # Standard integration method templates
│   │   ├── mcp-servers/
│   │   ├── docker-configs/
│   │   ├── api-patterns/
│   │   └── cli-tools/
│   └── hierarchy-templates/    # CLAUDE.md hierarchy examples
│       ├── global-template.md
│       ├── workspace-template.md
│       └── local-template.md
├── project-scaffolding/        # New project initialization templates
│   ├── typescript-react/
│   ├── node-api/
│   ├── python-service/
│   └── multi-agent-hub/
├── documentation/              # Central documentation
│   ├── standards/
│   ├── best-practices/
│   └── migration-guides/
└── scripts/                    # Automation scripts
    ├── validate-claude-md.sh
    ├── create-project.sh
    └── sync-templates.sh
```

## Template Categories

### Claude Configuration Templates
- **Project Templates**: Ready-to-use CLAUDE.md files for different project types
- **Integration Methods**: Standardized patterns for common integrations
- **Hierarchy Examples**: Proper CLAUDE.md hierarchy structure examples

### Project Scaffolding
- **TypeScript React**: Modern React applications with TypeScript
- **Node API**: RESTful API services with Express/Fastify
- **Python Service**: Python-based microservices and utilities
- **Multi-Agent Hub**: Complex multi-agent development platforms

### Documentation Standards
- **Integration Patterns**: How to integrate with various services
- **Best Practices**: Coding standards and development workflows
- **Migration Guides**: Moving between architectures or versions

## Usage Instructions

### Creating a New Project
```bash
# Use the project creation script
./scripts/create-project.sh --type=client --name=new-client

# Or manually copy templates
cp claude-configs/project-templates/client-project.md ~/Development/Clients/new-client/CLAUDE.md
```

### Validating CLAUDE.md Files
```bash
# Validate a specific file
./scripts/validate-claude-md.sh ~/Development/Company/project/CLAUDE.md

# Validate all projects
./scripts/validate-claude-md.sh --all
```

### Syncing Templates
```bash
# Update all projects with latest template changes
./scripts/sync-templates.sh --dry-run  # Preview changes
./scripts/sync-templates.sh --apply    # Apply changes
```

## Integration Standards

### MCP Server Integration
- Standard configuration patterns
- Environment variable management
- Error handling templates
- Testing strategies

### Docker Configuration
- Multi-stage build templates
- Development vs production configs
- Docker Compose patterns
- Security best practices

### API Patterns
- RESTful endpoint structures
- GraphQL schema templates
- Authentication patterns
- Rate limiting configurations

### CLI Tool Integration
- Command structure templates
- Help text standards
- Configuration file patterns
- Shell completion scripts

## Contribution Guidelines
1. **Template Updates**: All changes must maintain backward compatibility
2. **Documentation**: Update relevant docs when changing templates
3. **Testing**: Verify templates work in target environments
4. **Versioning**: Use semantic versioning for template releases
5. **Review**: All changes require review before merging

## Related Repositories
- **EC AI Agent Hub**: `empowercitizen/ec-ai-agent-hub` - Main development platform
- **Demo Client**: `empowercitizen/demo-client` - Client website template
- **Salsambo Studio**: `empowercitizen/salsambo-studio` - Dance studio example
- **Meta Management**: `~/Development/.meta` - Cross-repo coordination

## Quality Standards
- **Consistency**: All templates follow EC ecosystem conventions
- **Documentation**: Every template includes usage instructions
- **Testing**: Templates are tested in real projects
- **Maintenance**: Regular updates based on ecosystem evolution
- **Security**: Templates include security best practices

## Version Management
- **Current Version**: v1.0
- **Release Cycle**: Monthly updates with ecosystem changes
- **Breaking Changes**: Announced with migration guides
- **Deprecation**: 6-month deprecation period for old patterns

---

*Central repository for maintaining consistency and quality across the EC multi-repository ecosystem.*