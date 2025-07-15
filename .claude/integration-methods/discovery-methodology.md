# Integration Methods Discovery Methodology

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/discovery-methodology.md`  
**Created**: July 11, 2025  
**Purpose**: Systematic methodology for discovering all integration methods across WSL2 system

## Executive Summary

This methodology was developed to address a **22% error rate** in the initial integration methods inventory, where 2 out of 9 active MCP servers were missed using file-based discovery only. The systematic approach combines service-based discovery (primary) with file-based discovery (secondary validation) to ensure comprehensive coverage.

## Error Analysis from Previous Inventory

### What Went Wrong
- **Method Used**: File-based search only (`find`, `grep` for keywords)
- **Services Missed**: Mermaid MCP server, Sentry MCP server  
- **Error Rate**: 22% (2 missed out of 9 active servers)
- **Root Cause**: Active services don't always leave searchable file traces

### What Was Learned
- **File-based discovery alone is insufficient** for active service inventory
- **Running processes provide definitive service status** 
- **Docker containers require container-specific discovery commands**
- **Network listeners reveal active integration endpoints**
- **Multi-phase discovery prevents gaps** in service detection

## Systematic Discovery Methodology

### Phase 1: Service-Based Discovery (Primary Method)

#### 1.1 Active Process Discovery
**Command**: `ps aux | grep -E "(mcp|api|webhook|docker|n8n|sentry)" | grep -v grep`

**Purpose**: Identify all running integration-related processes  
**Results Example**: 40+ active MCP processes discovered across multiple terminals

**Key Patterns to Look For**:
- MCP server processes: `context7-mcp`, `mcp-server-playwright`, `sentry-mcp`
- Node.js processes: `npm exec @playwright/mcp`, `node /path/to/mcp-server`
- Python processes: `/home/ec-xps/.local/share/crawl4ai-mcp/.venv/bin/python3`
- API servers: Process names containing `api`, `server`, `webhook`

#### 1.2 Docker Container Discovery
**Commands**:
```bash
# All containers (running and stopped)
docker ps --all --format "table {{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Ports}}"

# Docker networks
docker network ls

# Docker volumes (if needed)
docker volume ls
```

**Purpose**: Discover containerized integration services  
**Results Example**: 10 containers (8 active, 2 inactive) with comprehensive port mapping

**Key Information Captured**:
- Container status (Up/Exited/Created)
- Port mappings revealing service endpoints
- Image names indicating integration types
- Network configurations for service communication

#### 1.3 Network Listener Discovery
**Command**: `ss -tulpn | grep LISTEN | head -15`

**Purpose**: Identify active network services and API endpoints  
**Results Example**: 13 active listeners including integration service ports

**Key Ports Discovered**:
- 3000: Langfuse web interface
- 3002: n8n workflow automation  
- 3003: Chroma vector database
- 5432: PostgreSQL database
- 6379: Redis cache
- 8123: ClickHouse analytics
- 9000-9091: MinIO storage services

#### 1.4 Installed Tools Discovery
**Commands**:
```bash
# Check specific tool availability
which gh claude task-master npm node docker git

# Global npm packages with integration focus
npm list -g --depth=0 | grep -E "(mcp|api|webhook|cli)"
```

**Purpose**: Identify available CLI tools and integration packages  
**Results Example**: 8+ CLI tools including GitHub CLI, multiple MCP packages

### Phase 2: Configuration Discovery (Secondary Validation)

#### 2.1 Configuration File Discovery
**Command**: `find /home/ec-xps/EC-Development -name "*.env*" -o -name "config.json" -o -name ".mcp.json" -o -name "docker-compose*.yml" 2>/dev/null | head -20`

**Purpose**: Locate configuration files that define integration setups  
**Results Example**: 20+ configuration files including .env files, MCP configs, Docker compose files

**File Types to Search For**:
- Environment files: `.env*`, `.env.example`, `.env.1p`
- Configuration files: `config.json`, `.mcp.json`, `settings.json`
- Docker files: `docker-compose*.yml`, `Dockerfile`
- API configurations: `api-config.json`, `webhook-config.json`

#### 2.2 Implementation File Discovery
**Command**: `find /home/ec-xps/EC-Development -name "*webhook*" -o -name "*api*" -o -name "*n8n*" 2>/dev/null | head -20`

**Purpose**: Find implementation files and usage patterns  
**Results Example**: 20+ implementation files across different integration types

### Phase 3: Documentation and Template Discovery

#### 3.1 Existing Documentation Discovery
**Commands**:
```bash
# Find integration-specific documentation
find /home/ec-xps/EC-Development -name "*integration*" -o -name "*mcp*" -o -name "*webhook*" -name "*.md"

# Find README files with integration information
find /home/ec-xps/EC-Development -name "README*.md" | grep -E "(api|webhook|mcp|n8n)"
```

**Purpose**: Locate existing documentation and patterns

#### 3.2 Template and Example Discovery
**Purpose**: Find reusable integration templates and working examples

## Discovery Results Classification

### Active vs Inactive Classification

#### Active Services Criteria
- Process running and visible in `ps aux`
- Container status "Up" in `docker ps`
- Network port actively listening in `ss -tulpn`
- Recent log activity or process timestamps

#### Inactive Services Criteria  
- Configuration files exist but no running process
- Container status "Exited" or "Created" (not started)
- No network listeners on expected ports
- Documentation references services not currently running

### Integration Method Categories

#### 1. MCP (Model Context Protocol)
**Discovery Commands**:
```bash
ps aux | grep mcp | grep -v grep
npm list -g | grep mcp
```

**Active Status Indicators**:
- Multiple `mcp-server-*` processes running
- NPM packages with "mcp" in name installed globally
- Context7, Playwright, Sentry, Supabase servers actively connected

#### 2. Docker Infrastructure
**Discovery Commands**:
```bash
docker ps --all
docker network ls
docker volume ls
```

**Active Status Indicators**:
- Containers with "Up" status
- Custom networks beyond default bridge
- Exposed ports mapping to host system

#### 3. API Services
**Discovery Commands**:
```bash
ss -tulpn | grep LISTEN
curl -s localhost:PORT/health 2>/dev/null || echo "No response"
```

**Active Status Indicators**:
- HTTP/HTTPS ports actively listening
- Health check endpoints responding
- API documentation or OpenAPI specs available

#### 4. Database Services
**Discovery Commands**:
```bash
docker ps | grep -E "(postgres|redis|mongo|mysql)"
ss -tulpn | grep -E "(5432|6379|27017|3306)"
```

**Active Status Indicators**:
- Database containers running
- Database ports listening
- Connection strings in active configuration files

## Best Practices for Ongoing Discovery

### Regular Discovery Schedule
- **Weekly**: Run full discovery methodology to catch new services
- **Before major deployments**: Verify integration status
- **After system changes**: Re-run discovery to update inventory
- **When troubleshooting**: Use discovery to verify service status

### Discovery Command Sequences

#### Quick Status Check (5 minutes)
```bash
# MCP servers
ps aux | grep mcp | grep -v grep | wc -l

# Docker containers
docker ps --format "table {{.Names}}\t{{.Status}}" | grep Up | wc -l

# Active ports
ss -tulpn | grep LISTEN | wc -l
```

#### Comprehensive Discovery (15 minutes)
```bash
# Phase 1: Services
ps aux | grep -E "(mcp|api|webhook|docker|n8n)" | grep -v grep > discovery-processes.txt
docker ps --all --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" > discovery-containers.txt
ss -tulpn | grep LISTEN > discovery-ports.txt

# Phase 2: Configuration  
find /home/ec-xps/EC-Development -name "*.env*" -o -name "config.json" -o -name ".mcp.json" 2>/dev/null > discovery-configs.txt

# Phase 3: Documentation
find /home/ec-xps/EC-Development -name "*integration*" -o -name "*mcp*" -name "*.md" 2>/dev/null > discovery-docs.txt
```

### Validation Checklist

#### MCP Server Validation
- [ ] Count matches `/mcp` command output
- [ ] All servers show "connected" status  
- [ ] Process count matches expected server count
- [ ] No missing servers from known inventory

#### Docker Service Validation
- [ ] All expected containers are running or appropriately stopped
- [ ] Port mappings match expected service configurations
- [ ] Health checks passing where configured
- [ ] Network connectivity between related services

#### Integration Service Validation
- [ ] API endpoints responding to health checks
- [ ] Webhook endpoints accepting test payloads
- [ ] Database connections successful
- [ ] Authentication systems functioning

## Troubleshooting Discovery Issues

### Common Discovery Problems

#### 1. Missing Active Services
**Symptoms**: Service known to be running but not discovered  
**Solutions**:
- Check alternative process names or command variations
- Look for parent/child process relationships
- Check Docker container logs for actual running processes
- Verify service is actually running vs configured but stopped

#### 2. False Positives
**Symptoms**: Discovering services that aren't actually integration-related  
**Solutions**:
- Refine grep patterns to be more specific
- Cross-reference with known integration service lists
- Validate by checking actual service functionality
- Document exclusion patterns for future discovery

#### 3. Discovery Timeout Issues
**Symptoms**: Find commands taking too long or hanging  
**Solutions**:
- Add appropriate timeout parameters
- Exclude large directories (node_modules, .git)
- Use more targeted search paths
- Split discovery into smaller, focused searches

### Recovery Procedures

#### If Discovery Fails Completely
1. **Manual verification**: Check known services manually
2. **Incremental discovery**: Start with one integration type
3. **Alternative commands**: Use backup discovery methods
4. **System restart**: Sometimes resolves stuck processes

#### If Results Seem Incomplete
1. **Cross-reference**: Compare with previous inventory
2. **Manual spot checks**: Verify known services manually
3. **Extended search**: Expand search patterns and locations
4. **Process inspection**: Check for unusual service startup patterns

## Success Metrics

### Discovery Completeness Metrics
- **MCP Server Detection**: 100% of `/mcp` command servers discovered
- **Docker Container Coverage**: All containers with integration relevance identified
- **Port Coverage**: All integration service ports identified
- **Configuration File Coverage**: All env/config files with integration settings found

### Quality Metrics
- **False Positive Rate**: < 5% of discovered items not actually integration-related
- **Discovery Time**: Full discovery completed in < 15 minutes
- **Reproducibility**: Same results when run multiple times
- **Documentation Accuracy**: Discovery results match actual service behavior

### Maintenance Metrics
- **Update Frequency**: Inventory updated within 24 hours of service changes
- **Command Reliability**: Discovery commands work consistently across different sessions
- **Integration Tracking**: New integrations captured within one discovery cycle

---

## Implementation Notes

### Tools Required
- **System Access**: WSL2 with Docker, npm, standard Unix tools
- **MCP Access**: Claude Code with MCP servers configured
- **Docker Access**: Docker daemon running with user permissions
- **Network Tools**: ss/netstat for port discovery

### Storage and Documentation
- **Discovery Results**: Store in integration-methods directory
- **Command History**: Document successful discovery patterns
- **Error Logs**: Track and resolve discovery issues
- **Update Process**: Regular inventory updates using this methodology

This methodology ensures comprehensive and reliable discovery of all integration methods across the WSL2 system, preventing the 22% error rate experienced with file-based discovery alone.

*Created: July 11, 2025*  
*Based on lessons learned from systematic discovery implementation*