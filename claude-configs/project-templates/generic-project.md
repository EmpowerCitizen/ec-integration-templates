# [Project Name] - Claude Code Project Configuration
# Version: v1.0-[DATE]
# Project Type: [Type Description]

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
**Status:** MANDATORY FOR ALL PROJECT DEVELOPMENT
**Scope:** EVERY PROMPT MUST USE SEQUENTIAL THINKING

### Project Sequential Thinking Implementation
- **MANDATORY** for all project development work
- **APPLIES TO** [specific project activities]
- **AUTO-EXECUTE** sequential thinking before all implementations
- **INTEGRATION** with project workflows and standards

### Auto-Execute Project Integration
- **NEVER ask** permission to use sequential thinking
- **ALWAYS engage** sequential thinking as first step in responses
- **INTEGRATE** with existing auto-execute behaviors
- **MAINTAIN** consistency with hierarchy requirements

**PROJECT RULE:** Every prompt for [Project Name] MUST use sequential thinking

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
[Brief description of the project purpose and goals]

## Technical Stack
- **Language**: [Primary language]
- **Framework**: [Main framework]
- **Database**: [Database system]
- **Tools**: [Development tools]

## Project Structure
```
project-root/
├── src/                  # Source code
├── tests/               # Test files
├── docs/                # Documentation
├── .claude/             # Claude configuration
└── README.md            # Project documentation
```

## Development Commands
```bash
# Common commands for this project
```

## Integration Points
- **APIs**: [List of integrated APIs]
- **Services**: [External services]
- **Tools**: [Development tools]

## Security Practices
- Never commit secrets or API keys
- Use environment variables for configuration
- Follow security best practices

## Related Resources
- **Documentation**: [Links to docs]
- **Dependencies**: [Key dependencies]
- **Related Projects**: [Connected projects]

---

*[Project tagline or description]*