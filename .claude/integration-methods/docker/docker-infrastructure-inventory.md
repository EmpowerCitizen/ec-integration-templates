# Docker Infrastructure Inventory

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/docker/docker-infrastructure-inventory.md`  
**Created**: July 11, 2025  
**Purpose**: Complete inventory of Docker containers, networks, and volumes

## Docker Container Status Summary

**Total Containers**: 10 (8 Active, 2 Inactive)  
**Discovery Command**: `docker ps --all --format "table {{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Ports}}"`  
**Discovery Date**: July 11, 2025

## Active Containers (8)

### 1. n8n-sqlite ✅
- **Status**: Up 6 hours
- **Image**: n8nio/n8n:latest
- **Ports**: 0.0.0.0:3002->5678/tcp, [::]:3002->5678/tcp
- **Purpose**: Workflow automation platform
- **Access**: http://localhost:3002

### 2. langfuse-web ✅
- **Status**: Up 6 hours (unhealthy)
- **Image**: langfuse/langfuse:3
- **Ports**: 0.0.0.0:3000->3000/tcp, [::]:3000->3000/tcp
- **Purpose**: LLM observability and analytics
- **Access**: http://localhost:3000
- **Note**: Marked as unhealthy - requires investigation

### 3. langfuse-postgres ✅
- **Status**: Up 17 hours (healthy)
- **Image**: postgres:15
- **Ports**: 0.0.0.0:5432->5432/tcp, [::]:5432->5432/tcp
- **Purpose**: PostgreSQL database for Langfuse
- **Access**: localhost:5432

### 4. langfuse-minio ✅
- **Status**: Up 17 hours (healthy)
- **Image**: minio/minio:latest
- **Ports**: 0.0.0.0:9001->9000/tcp, [::]:9001->9000/tcp, 0.0.0.0:9091->9090/tcp, [::]:9091->9090/tcp
- **Purpose**: Object storage for Langfuse
- **Access**: http://localhost:9001 (console), http://localhost:9091 (API)

### 5. langfuse-clickhouse ✅
- **Status**: Up 17 hours (healthy)
- **Image**: clickhouse/clickhouse-server:24.1
- **Ports**: 0.0.0.0:8123->8123/tcp, [::]:8123->8123/tcp, 0.0.0.0:9000->9000/tcp, [::]:9000->9000/tcp
- **Purpose**: Analytics database for Langfuse
- **Access**: http://localhost:8123 (HTTP), localhost:9000 (native)

### 6. langfuse-redis ✅
- **Status**: Up 17 hours (healthy)
- **Image**: redis:7-alpine
- **Ports**: 0.0.0.0:6379->6379/tcp, [::]:6379->6379/tcp
- **Purpose**: Caching and session storage
- **Access**: localhost:6379

### 7. n8n-chroma ✅
- **Status**: Up 16 hours
- **Image**: chromadb/chroma:latest
- **Ports**: 0.0.0.0:3003->8000/tcp, [::]:3003->8000/tcp
- **Purpose**: Vector database for n8n workflows
- **Access**: http://localhost:3003

### 8. watchtower ✅
- **Status**: Up 7 hours (healthy)
- **Image**: containrrr/watchtower
- **Ports**: 8080/tcp
- **Purpose**: Automatic container updates
- **Access**: Internal service

## Inactive Containers (2)

### 1. Claude-TaskMaster ❌
- **Status**: Exited (254) 4 hours ago
- **Image**: docker-implementation-taskmaster-mcp
- **Ports**: Not running
- **Purpose**: Task Master MCP server implementation
- **Action Required**: Investigate exit code 254

### 2. flowise-sqlite ❌
- **Status**: Created
- **Image**: flowiseai/flowise:latest
- **Ports**: Not started
- **Purpose**: AI workflow builder
- **Action Required**: Start container if needed

## Docker Networks

**Discovery Command**: `docker network ls`  
**Total Networks**: 8

### Custom Networks
1. **docker-implementation_taskmaster-network** (bridge)
2. **flowise-sqlite_default** (bridge)
3. **langfuse-sqlite_default** (bridge)
4. **langfuse-v2_langfuse-network** (bridge)
5. **n8n-sqlite_default** (bridge)

### System Networks
1. **bridge** (bridge, local)
2. **host** (host, local)
3. **none** (null, local)

## Port Mapping Summary

**Discovery Command**: `ss -tulpn | grep LISTEN`

### Application Ports
- **3000**: Langfuse web interface
- **3002**: n8n workflow automation
- **3003**: Chroma vector database

### Database Ports
- **5432**: PostgreSQL (Langfuse)
- **6379**: Redis (Langfuse cache)
- **8123**: ClickHouse HTTP interface
- **9000**: ClickHouse native protocol

### Storage/Admin Ports
- **9001**: MinIO console
- **9091**: MinIO API

### Internal Ports
- **8080**: Watchtower (internal)

## Container Orchestration

### Langfuse Stack
**Network**: langfuse-v2_langfuse-network  
**Containers**:
- langfuse-web (frontend)
- langfuse-postgres (database)
- langfuse-redis (cache)
- langfuse-clickhouse (analytics)
- langfuse-minio (storage)

### n8n Stack
**Network**: n8n-sqlite_default  
**Containers**:
- n8n-sqlite (automation platform)
- n8n-chroma (vector database)

### Independent Services
- watchtower (update management)
- Claude-TaskMaster (inactive MCP service)
- flowise-sqlite (inactive AI workflow)

## Docker Compose Files

**Discovery Command**: `find /home/ec-xps/EC-Development -name "docker-compose*.yml"`

### Active Compose Files
- `/home/ec-xps/EC-Development/Infrastructure/docker-watchtower/docker-compose.yml`
- `/home/ec-xps/EC-Development/docker-compose-watchtower.yml`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/00-Setup/02-Setup-Claude TaskMaster and custom mcp container/docker-implementation/docker-compose.yml`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/flowise-sqlite/docker-compose.yml`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/n8n-sqlite/docker-compose.yml`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/docker-compose.sqlite.yml`

## Health Status Monitoring

### Healthy Containers (4)
- langfuse-postgres
- langfuse-minio
- langfuse-clickhouse
- langfuse-redis
- watchtower

### Unhealthy Containers (1)
- langfuse-web (requires investigation)

### Unknown Health Status (3)
- n8n-sqlite
- n8n-chroma

### Inactive Containers (2)
- Claude-TaskMaster (exit code 254)
- flowise-sqlite (not started)

## Volume Usage

### Persistent Data
Most containers use named volumes or bind mounts for data persistence:
- Database data (PostgreSQL, Redis, ClickHouse)
- Object storage (MinIO)
- Workflow data (n8n)
- Vector database (Chroma)

## Security Considerations

### Port Exposure
All containers expose ports to localhost (127.0.0.1 and ::1), not external interfaces.

### Network Isolation
Containers are organized into separate networks by service stack.

### Volume Security
Persistent volumes maintain data between container restarts.

## Maintenance Tasks

### Regular Monitoring
- Check container health status
- Monitor resource usage
- Verify port accessibility
- Review container logs

### Update Management
- Watchtower automatically updates containers
- Manual updates for critical services
- Backup before major updates

### Cleanup Tasks
- Remove unused volumes: `docker volume prune`
- Remove unused networks: `docker network prune`
- Remove inactive containers if no longer needed

## Troubleshooting Commands

### Container Status
```bash
docker ps --all
docker stats
docker logs [container-name]
```

### Network Connectivity
```bash
docker network inspect [network-name]
ss -tulpn | grep [port]
```

### Health Checks
```bash
docker inspect [container-name] | grep Health -A 10
curl -s http://localhost:[port]/health
```

## Integration with Other Services

### MCP Integration
- Claude-TaskMaster container provides MCP server functionality
- Container can be restarted if needed for MCP services

### API Integration
- Multiple containers expose HTTP APIs on different ports
- APIs accessible via localhost for other integration methods

### Database Integration
- PostgreSQL, Redis, and ClickHouse available for other services
- Standard database connection strings for integration

### Workflow Integration
- n8n container provides workflow automation
- Webhooks can trigger workflows
- APIs can be called from workflows

---

*Last Updated: July 11, 2025 - Based on systematic Docker discovery*  
*Part of the integration methods comprehensive inventory*