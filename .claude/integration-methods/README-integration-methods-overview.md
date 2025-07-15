# Integration Methods Overview

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/README-integration-methods-overview.md`  
**Created**: July 11, 2025  
**Updated**: July 11, 2025 - Systematic Discovery Results  
**Purpose**: Master index of all integration methods discovered across entire WSL2 system

## Discovery Methodology Results

### Error Analysis and Correction
**Previous Inventory Error**: 22% miss rate (2 out of 9 active MCP servers initially missed)  
**Root Cause**: File-based discovery only, missed active running services  
**Solution**: Multi-phase systematic discovery (service-based + file-based)

### Systematic Discovery Phases Applied
1. **Service-Based Discovery**: Active processes, Docker containers, network listeners ✅
2. **Configuration Discovery**: Environment files, config files, API keys ✅  
3. **File-Based Discovery**: Documentation, templates, implementation files ✅
4. **Container Discovery**: Docker networks, volumes, service orchestration ✅

## What are Integration Methods?

Integration methods are the various ways systems communicate, exchange data, and work together. This documentation suite organizes all integration approaches used in the EC-Development workspace into standardized categories for better discoverability and management.

## Available Integration Methods

### 1. SDK Integration (Direct Software Development Kits) 🔧
**Location**: `./sdk/`  
**Status**: ✅ **NEWLY DISCOVERED** (2025-07-14)  
**Purpose**: Direct programmatic access through native software development kits

**Active Integrations**:
1. **Claude Code SDK ↔ TaskMaster** - Zero-cost AI integration
   - **SDK**: `@anthropic-ai/claude-code` v1.0.51 (Official Anthropic)
   - **Models**: opus, sonnet ($0 cost for both)
   - **Authentication**: None required (local process communication)
   - **Tools Available**: 34 TaskMaster MCP tools across 8 functional groups
   - **Status**: ✅ Configured and documented for immediate use
   - **Discovery Method**: SEVM Requirements Engineering Analysis
   - **Repository**: https://github.com/anthropics/claude-code
   - **Documentation**: https://docs.anthropic.com/en/docs/claude-code

**Key Advantages**: No API keys, zero cost, offline operation, ultra-low latency, 34 specialized tools  
**Files**: 2 comprehensive documentation files with complete tool reference and URLs

### 2. MCP (Model Context Protocol) 🤖
**Location**: `./mcp/`  
**Status**: ✅ 11 Active Servers (Updated 2025-07-12)  
**Purpose**: AI assistant integration with external tools and data sources

**Active Servers Discovered**:
1. **context7** - Documentation lookup (Context7)
2. **crawl4ai** - Web scraping and analysis 
3. **dart** - Dart project management
4. **desktop-commander** - Windows PC system access
5. **langfuse** - AI observability and monitoring ✅ **NEW** (2025-07-12)
6. **mermaid** - Diagram generation ⚠️ Previously missed
7. **n8n-mcp** - n8n workflow documentation and management ✅ **NEWLY INSTALLED** (2025-07-12)
    - Trust Score: 8.4 (Context7)
    - Coverage: 528 n8n nodes, 99% properties
    - Installation: `npx n8n-mcp`
8. **playwright** - Browser automation
9. **sentry** - Error tracking and monitoring ⚠️ Previously missed
10. **supabase** - Database and backend services  
11. **youtube-transcript** - YouTube video transcription

**Process Evidence**: 40+ active MCP processes running across multiple terminals  
**Usage Pattern**: `use context7 for [technology] [topic]`  
**Files**: 3 documentation files + configuration references

### 3. Webhooks 🔗
**Location**: `./webhooks/`  
**Status**: ✅ Extensively implemented across projects  
**Purpose**: Event-driven integrations and real-time notifications

- **Implementations**: 42+ files across projects
- **Primary Uses**: Langfuse automation, n8n triggers, Sanity CMS
- **Key Features**: Event processing, automation triggers, content management

### 4. n8n Workflow Automation 🔄
**Location**: `./n8n/`  
**Status**: ✅ Complete project with multiple deployments  
**Purpose**: Business process automation and data integration

- **Project**: EC-n8n-automations (comprehensive automation suite)
- **Instances**: 3 different n8n deployments
- **Key Features**: GitHub integration, accounting automation, form processing

### 4. CLI (Command Line Interface) 💻
**Location**: `./cli/`  
**Status**: ✅ GitHub CLI active, multiple CLI tools  
**Purpose**: Command-line development and automation tools

- **Primary Tool**: GitHub CLI v2.74.2 (authenticated)
- **Integration**: EC-Development Project Hub
- **Key Features**: Repository management, issue tracking, automation

### 5. REST APIs 📡
**Location**: `./api/`  
**Status**: ✅ Template-driven with security standards  
**Purpose**: Service-to-service communication and data exchange

- **Template**: Node.js API template (TypeScript, Express, PostgreSQL)
- **Security**: JWT authentication, input validation, rate limiting
- **Key Features**: RESTful design, comprehensive testing, documentation

### 6. GraphQL 🔧
**Location**: `./graphql/`  
**Status**: ⚠️ Limited documentation (found in client projects)  
**Purpose**: Flexible API queries and data fetching

- **Usage**: Sanity CMS integration, Octokit GitHub API
- **Implementation**: Client project integrations
- **Status**: Needs documentation development

## File Organization Standards

### Directory Structure
```
.claude/integration-methods/
├── [method]/
│   ├── README-[method]-integration.md     # Overview and patterns
│   ├── [method]-files-inventory.md        # Complete file listing with paths
│   ├── [specific-implementation].md       # Implementation guides
│   └── [usage-patterns].md               # Usage examples and patterns
└── README-integration-methods-overview.md # This file
```

### File Naming Conventions
- **Overview**: `README-[method]-integration.md`
- **Inventory**: `[method]-files-inventory.md`
- **Specific Docs**: Descriptive names with method prefix

## Usage Guidelines

## Discovery Methodology (Corrects 22% Error Rate)

### Service-Based Discovery (Primary Method)
Commands used to discover active integration methods:
```bash
# Active MCP processes (discovered 9 servers vs previous 7)
ps aux | grep -E "(mcp|api|webhook|docker|n8n)" | grep -v grep

# Docker containers (discovered 10 containers with 6 active)  
docker ps --all --format "table {{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Ports}}"

# Network listeners (discovered 13 active ports)
ss -tulpn | grep LISTEN

# Docker networks (discovered 8 networks)
docker network ls
```

### Key Discovery Results
- **MCP Servers**: 9 active (vs previous incomplete count)
- **Docker Containers**: 10 total (6 active, 4 inactive) 
- **Active Ports**: 13 network listeners including 3000, 3002, 3003, 5432, 6379, 8123, 9000-9091
- **Configuration Files**: 20+ env/config files discovered
- **CLI Tools**: 8+ global npm packages with MCP/CLI tools

### Docker Infrastructure Discovered
**Active Containers**:
- n8n-sqlite (Up 6 hours) - Port 3002:5678
- langfuse-web (Up 6 hours, unhealthy) - Port 3000:3000  
- langfuse-postgres (Up 17 hours) - Port 5432:5432
- langfuse-minio (Up 17 hours) - Ports 9001:9000, 9091:9090
- langfuse-clickhouse (Up 17 hours) - Ports 8123:8123, 9000:9000
- langfuse-redis (Up 17 hours) - Port 6379:6379
- n8n-chroma (Up 16 hours) - Port 3003:8000
- watchtower (Up 7 hours, healthy)

**Inactive Containers**:
- Claude-TaskMaster (Exited 4 hours ago)
- flowise-sqlite (Created, not started)

### Discovery Process (Systematic)
1. **Check this overview** for available integration methods
2. **Run discovery commands** to verify active services
3. **Visit method directory** for specific implementation details
4. **Review inventory file** for complete file listings with paths
5. **Follow implementation guides** for setup and configuration

### Integration Selection
Choose integration methods based on:
- **Real-time needs**: Webhooks for immediate responses
- **Automation requirements**: n8n for complex workflows
- **Development tools**: CLI for command-line operations
- **Service communication**: APIs for data exchange
- **AI integration**: MCP for assistant capabilities

### Documentation Standards
- **Path Tracking**: All files listed with complete paths
- **Status Indicators**: Clear status of each integration method
- **Cross-References**: Links between related integration methods
- **Usage Patterns**: Consistent patterns across implementations

## Integration Relationships

### Common Integration Patterns
1. **API + Webhooks**: RESTful services with event notifications
2. **n8n + Webhooks**: Workflow automation triggered by events
3. **CLI + API**: Command-line tools for API management
4. **MCP + All Methods**: AI assistant integration across all methods

### Workspace Integration Flow
```
GitHub CLI → Repository Management
     ↓
API Templates → Service Development
     ↓
Webhooks → Event Processing
     ↓
n8n → Workflow Automation
     ↓
MCP → AI Assistant Integration
```

## Quick Start Guide

### For New Projects
1. **Choose integration methods** based on project requirements
2. **Follow template patterns** from relevant directories
3. **Implement security standards** from API documentation
4. **Set up monitoring** using webhook and n8n patterns

### For Existing Projects
1. **Audit current integrations** using inventory files
2. **Standardize implementations** using documented patterns
3. **Add missing integrations** following template guides
4. **Update documentation** following naming conventions

## Maintenance and Updates

### Regular Tasks
- Update inventory files when adding new implementations
- Review and update usage patterns based on project evolution
- Maintain security standards across all integration methods
- Document new integration patterns as they emerge

### File Location Updates
When moving files, update:
1. Relevant inventory files with new paths
2. Cross-references in related documentation
3. CLAUDE.md files referencing the integration methods
4. Project templates and examples

---

## Integration Method Status Summary

| Method | Status | Active/Inactive | Primary Use | Discovery Evidence |
|--------|--------|-----------------|-------------|-------------------|
| MCP | ✅ Active | 9 Active Servers | AI assistant integration | 40+ running processes |
| Docker | ✅ Active | 8 Active, 2 Inactive | Container orchestration | 10 containers, 8 networks |
| Webhooks | ✅ Extensive | 42+ files | Event-driven automation | Langfuse, n8n, Sanity integrations |
| n8n | ✅ Active | 1 Active container | Workflow automation | Port 3002, 18+ config files |
| CLI | ✅ Active | 8+ tools installed | Command-line operations | GitHub CLI, multiple npm packages |
| API | ✅ Template | Templates + Active ports | Service communication | Langfuse (3000), n8n (3002), Chroma (3003) |
| Database | ✅ Active | 3 Active containers | Data persistence | PostgreSQL (5432), Redis (6379), ClickHouse (8123) |
| GraphQL | ⚠️ Limited | TBD | Flexible API queries | Needs active service discovery |

### Discovery Command Reference
```bash
# Quick integration status check
ps aux | grep -E "(mcp|api|webhook|docker|n8n)" | grep -v grep
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
ss -tulpn | grep LISTEN | head -10
```

*Last Updated: July 11, 2025 - Systematic Discovery Complete*  
*Corrected 22% error rate with service-based discovery methodology*