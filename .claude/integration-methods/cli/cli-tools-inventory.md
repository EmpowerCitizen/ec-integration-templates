# CLI Tools Inventory

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/cli/cli-tools-inventory.md`  
**Created**: July 11, 2025  
**Purpose**: Complete inventory of all CLI tools and command-line integrations

## CLI Tools Status Summary

**Total CLI Tools**: 22 (22 Active, 0 Inactive)  
**Discovery Commands**: 
- `which [tool-name]` - Check tool availability in PATH
- `npm list -g --depth=0` - Global NPM packages
- `ls /home/ec-xps/.local/bin/` - Local user binaries
- `pip list` - Python packages with CLI tools  
**Discovery Date**: July 11, 2025

## Active CLI Tools (22)

### Development & AI Tools (7)

#### 1. Claude Code ✅
- **Binary Path**: `/home/ec-xps/.nvm/versions/node/v22.17.0/bin/claude`
- **Version**: 1.0.51 (from NPM global)
- **Purpose**: AI-powered development assistant and CLI interface
- **Installation**: NPM global package `@anthropic-ai/claude-code`
- **Configuration**: `~/.claude/settings.json`, project-specific `.claude/`
- **Integration Points**: MCP servers, project workflows, git integration
- **Usage**: `claude`, `claude -p "prompt"`, `/commands`

#### 2. Task Master AI ✅
- **Binary Path**: `/home/ec-xps/.nvm/versions/node/v22.17.0/bin/task-master`
- **Version**: 0.19.0 (from NPM global)
- **Purpose**: AI-powered task management and project breakdown
- **Installation**: NPM global package `task-master-ai`
- **Configuration**: `.taskmaster/config.json`, `.taskmaster/tasks/`
- **Integration Points**: Claude Code, MCP integration, project planning
- **Usage**: `task-master init`, `task-master parse-prd`, `task-master next`

#### 3. GitHub CLI (gh) ✅
- **Binary Path**: `/usr/bin/gh`
- **Purpose**: GitHub repository and workflow management
- **Installation**: System package manager
- **Configuration**: `~/.config/gh/config.yml`
- **Authentication**: OAuth with empowercitizen account
- **Integration Points**: Git workflows, project management, CI/CD
- **Usage**: `gh repo list`, `gh pr create`, `gh issue list`

#### 4. Claude (Alternative) ✅
- **Binary Path**: `/home/ec-xps/.local/bin/claude-code`
- **Purpose**: Alternative Claude CLI installation
- **Installation**: Local binary installation
- **Note**: Secondary installation, primary is via NPM
- **Status**: Available but NPM version is primary

#### 5. Codex ✅
- **Binary Path**: `/home/ec-xps/.local/bin/codex`
- **Purpose**: OpenAI Codex CLI tool
- **Installation**: Local binary installation
- **Integration Points**: Code generation, AI development workflows
- **Usage**: Code completion and generation tasks

#### 6. Conversation Archiver ✅
- **Binary Path**: `/home/ec-xps/.local/bin/conversation-archiver`
- **Purpose**: Custom conversation archiving tool
- **Installation**: Local development tool
- **Configuration**: Works with Claude Code conversation archiving
- **Integration Points**: `#conversation` command, archival workflows
- **Usage**: Custom conversation processing and storage

#### 7. Crystal ✅
- **Binary Path**: `/home/ec-xps/.local/bin/crystal`
- **Purpose**: Crystal programming language compiler
- **Installation**: Local binary installation
- **Status**: Available for Crystal development projects

### Core Development Tools (4)

#### 8. Node.js ✅
- **Binary Path**: `/home/ec-xps/.nvm/versions/node/v22.17.0/bin/node`
- **Version**: v22.17.0 (managed by NVM)
- **Purpose**: JavaScript runtime environment
- **Installation**: NVM (Node Version Manager)
- **Integration Points**: All NPM packages, development workflows
- **Usage**: `node script.js`, runtime for various tools

#### 9. NPM ✅
- **Binary Path**: `/home/ec-xps/.nvm/versions/node/v22.17.0/bin/npm`
- **Purpose**: Node.js package manager
- **Installation**: Bundled with Node.js
- **Configuration**: Global packages in `/home/ec-xps/.nvm/versions/node/v22.17.0/lib/node_modules/`
- **Integration Points**: MCP servers, development dependencies
- **Usage**: `npm install`, `npm list -g`, `npx [package]`

#### 10. Git ✅
- **Binary Path**: `/usr/bin/git`
- **Purpose**: Version control system
- **Installation**: System package manager
- **Configuration**: `~/.gitconfig`, project-specific `.git/`
- **Integration Points**: GitHub CLI, development workflows, Claude Code
- **Usage**: `git status`, `git commit`, `git push`

#### 11. Docker ✅
- **Binary Path**: `/usr/bin/docker`
- **Purpose**: Container platform and orchestration
- **Installation**: System package manager
- **Configuration**: Docker daemon, docker-compose files
- **Integration Points**: Container infrastructure, development environments
- **Usage**: `docker ps`, `docker-compose up`, `docker build`

### Python Ecosystem (3)

#### 12. Python 3 ✅
- **Binary Path**: `/usr/bin/python3`
- **Purpose**: Python programming language interpreter
- **Installation**: System package manager
- **Integration Points**: Python-based MCP servers, scripts, automation
- **Usage**: `python3 script.py`, runtime for Python tools

#### 13. Pip ✅
- **Binary Path**: `/usr/bin/pip`
- **Purpose**: Python package installer
- **Installation**: Bundled with Python
- **Integration Points**: Python-based tools and MCP servers
- **Usage**: `pip install`, `pip list`, package management

#### 14. UVX ✅
- **Binary Path**: `/home/ec-xps/.local/bin/uvx`
- **Purpose**: Python package runner (UV-based)
- **Installation**: Local Python tool installation
- **Integration Points**: MCP servers (YouTube transcript), Python tool execution
- **Usage**: `uvx [package]`, Python package execution

### Security & Secrets Management (1)

#### 15. 1Password CLI (op) ✅
- **Binary Path**: `/home/ec-xps/.local/bin/op`
- **Version**: 2.29.0
- **Purpose**: 1Password secret management and injection
- **Installation**: Local binary installation
- **Authentication**: empowercitizen.1password.com account
- **Configuration**: `~/.config/op/`, vault integrations
- **Integration Points**: Environment variable injection, secret management
- **Usage**: `op run --env-file=".env.1p" -- command`, `op item get`

### MCP Server Tools (6)

#### 16. Context7 MCP ✅
- **Installation**: NPM global `@upstash/context7-mcp@v1.0.14`
- **Purpose**: Documentation and context lookup
- **Status**: Active MCP server
- **Usage**: Via Claude Code MCP integration

#### 17. Playwright MCP ✅
- **Installation**: NPM global `@playwright/mcp@0.0.29`
- **Purpose**: Browser automation and testing
- **Status**: Active MCP server
- **Usage**: Via Claude Code MCP integration

#### 18. Fetch MCP ✅
- **Installation**: NPM global `@kazuph/mcp-fetch@1.5.0`
- **Purpose**: Web content fetching and processing
- **Status**: Available for MCP integration
- **Usage**: Web scraping and content retrieval

#### 19. Supabase MCP ✅
- **Installation**: NPM global `@supabase/mcp-server-supabase@0.4.5`
- **Purpose**: Supabase database and backend integration
- **Status**: Active MCP server
- **Usage**: Via Claude Code MCP integration

#### 20. Playwright CLI ✅
- **Binary Path**: `/home/ec-xps/.local/bin/playwright`
- **Purpose**: Standalone Playwright CLI tool
- **Installation**: Local Python/Node installation
- **Integration Points**: Browser automation, testing workflows
- **Usage**: `playwright install`, `playwright test`

#### 21. UVX MCP Integration ✅
- **Purpose**: Runs Python-based MCP servers
- **Integration**: YouTube Transcript MCP server via UVX
- **Usage**: `uvx --from git+https://github.com/jkawamoto/mcp-youtube-transcript mcp-youtube-transcript`

### Development Utilities (1)

#### 22. HTTPX ✅
- **Binary Path**: `/home/ec-xps/.local/bin/httpx`
- **Purpose**: Modern HTTP client for Python
- **Installation**: Local Python package
- **Integration Points**: API testing, HTTP debugging
- **Usage**: HTTP requests and API interaction

## Installation Methods and Sources

### NPM Global Packages (6)
```bash
# Active NPM global installations
@anthropic-ai/claude-code@1.0.51      # Claude Code CLI
@kazuph/mcp-fetch@1.5.0               # Fetch MCP server
@playwright/mcp@0.0.29                # Playwright MCP server
@supabase/mcp-server-supabase@0.4.5   # Supabase MCP server
@upstash/context7-mcp@v1.0.14         # Context7 MCP server
task-master-ai@0.19.0                 # Task Master AI
```

### System Package Manager (4)
- **gh** - GitHub CLI via apt/system package manager
- **git** - Version control via system package manager  
- **docker** - Container platform via system package manager
- **python3/pip** - Python ecosystem via system package manager

### Local Binary Installations (12)
Located in `/home/ec-xps/.local/bin/`:
- **acli** - Azure CLI alternative
- **claude-code** - Alternative Claude installation
- **claudia** - AWS Lambda deployment tool
- **codex** - OpenAI Codex CLI
- **conversation-archiver** - Custom archiving tool
- **crystal** - Crystal language compiler
- **env/env.fish** - Environment utilities
- **httpx** - HTTP client
- **op** - 1Password CLI
- **playwright** - Browser automation
- **rovo-dev** - Development utility

### NVM-Managed Node.js (3)
Located in `/home/ec-xps/.nvm/versions/node/v22.17.0/bin/`:
- **node** - JavaScript runtime
- **npm** - Package manager
- **claude** - Primary Claude Code installation
- **task-master** - Primary Task Master installation

## CLI Tool Categories and Usage Patterns

### AI Development Workflow
```bash
# Primary development workflow
claude                                    # Start AI development session
task-master init                         # Initialize project task management
gh repo create project-name             # Create GitHub repository
git init && git add . && git commit     # Initialize version control
```

### Secret Management Workflow
```bash
# Secure development with 1Password
op run --env-file=".env.1p" -- claude   # Inject secrets and start Claude
op item get "API Key" --vault=EC-Development   # Retrieve specific secrets
```

### Container Development Workflow
```bash
# Container-based development
docker-compose up -d                     # Start development environment
docker ps                               # Check running containers
gh pr create                            # Create pull request
```

### MCP Integration Workflow
```bash
# MCP servers are managed by Claude Code internally
# No direct CLI commands needed - integrated via Claude
```

## Configuration Files and Integration

### CLI Configuration Locations

#### Claude Code Configuration
- **Global**: `~/.claude/settings.json`
- **Project**: `.claude/settings.json`
- **Commands**: `.claude/commands/`
- **Memory**: `CLAUDE.md` files

#### Git Configuration
- **Global**: `~/.gitconfig`
- **Project**: `.git/config`
- **SSH**: `~/.ssh/config`

#### GitHub CLI Configuration
- **Config**: `~/.config/gh/config.yml`
- **Authentication**: OAuth tokens

#### 1Password Configuration
- **Config**: `~/.config/op/config`
- **Sessions**: Temporary session tokens

#### Node.js/NPM Configuration
- **Global packages**: `/home/ec-xps/.nvm/versions/node/v22.17.0/lib/node_modules/`
- **NPM config**: `~/.npmrc`
- **NVM config**: `~/.nvm/`

### Environment Variables
```bash
# Key environment variables for CLI tools
PATH="/home/ec-xps/.nvm/versions/node/v22.17.0/bin:/home/ec-xps/.local/bin:..."
NODE_PATH="/home/ec-xps/.nvm/versions/node/v22.17.0/lib/node_modules"
NVM_DIR="/home/ec-xps/.nvm"
```

## CLI Integration with Other Systems

### MCP Server Integration
- **NPM packages** provide MCP servers for Claude Code
- **UVX** runs Python-based MCP servers
- **Docker containers** can host MCP services

### Development Workflow Integration
- **GitHub CLI** integrates with Git workflows
- **Task Master** integrates with Claude Code sessions
- **1Password CLI** provides secure secret injection
- **Docker** provides development environment isolation

### API Integration
- **CLI tools** can call APIs exposed by container services
- **HTTPX/curl** for API testing and integration
- **GitHub CLI** for GitHub API operations

## Security Considerations

### Authentication and Authorization
- **1Password CLI**: Secure secret management
- **GitHub CLI**: OAuth authentication
- **Docker**: Container isolation
- **Git**: SSH key authentication

### Path Security
- **Local binaries** in user-controlled directories
- **NPM global packages** in user-specific paths
- **System packages** require elevated privileges for installation

### Secret Management
- **Never store secrets** in CLI history
- **Use 1Password CLI** for secret injection
- **Environment variables** for configuration
- **Git ignore** for sensitive configuration files

## Maintenance and Updates

### Update Commands

#### NPM Global Packages
```bash
# Update all global NPM packages
npm update -g

# Update specific package
npm install -g @anthropic-ai/claude-code@latest
```

#### System Packages
```bash
# Update system packages (requires sudo)
sudo apt update && sudo apt upgrade

# Update Docker
sudo apt install docker-ce docker-ce-cli containerd.io
```

#### Local Binaries
```bash
# Manual download and installation required
# Check project websites for latest versions
```

### Health Checks
```bash
# Verify core tools are working
claude --version
task-master --version
gh --version
git --version
docker --version
op --version
```

## Troubleshooting

### Common CLI Issues

#### Command Not Found
```bash
# Check if tool is in PATH
which [command]

# Check PATH variable
echo $PATH

# Reinstall if necessary
npm install -g [package]
```

#### Permission Issues
```bash
# Check file permissions
ls -la /path/to/binary

# Fix permissions if needed
chmod +x /path/to/binary
```

#### Version Conflicts
```bash
# Check installed versions
npm list -g [package]

# Use specific version
npx [package]@[version]
```

### MCP Integration Issues
- **Connection problems**: Restart Claude Code session
- **Missing servers**: Check NPM global installations
- **Configuration errors**: Verify `.mcp.json` settings

## Future CLI Tool Enhancements

### Planned Additions
1. **Additional MCP servers** for expanded functionality
2. **Custom CLI tools** for project-specific workflows  
3. **Automation scripts** for common development tasks
4. **Enhanced integration** between existing tools

### Automation Opportunities
1. **CLI command chaining** for complex workflows
2. **Script automation** for repetitive tasks
3. **Integration testing** for CLI tool combinations
4. **Monitoring** for CLI tool health and updates

---

*Last Updated: July 11, 2025 - Based on systematic CLI tool discovery*  
*Part of the integration methods comprehensive inventory*