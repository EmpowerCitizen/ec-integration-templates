# Database Services Inventory

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/database/database-services-inventory.md`  
**Created**: July 11, 2025  
**Purpose**: Complete inventory of all database services and data storage methods

## Database Services Status Summary

**Total Database Services**: 6 (4 Active, 2 Inactive)  
**Discovery Commands**: 
- `ss -tulpn | grep LISTEN | grep -E "(5432|6379|8123|9000|3306|27017)"`
- `docker ps | grep -E "(postgres|redis|clickhouse|mysql|mongo|sqlite)"`
- `find /home/ec-xps/EC-Development -name "*.db" -o -name "*.sqlite*"`  
**Discovery Date**: July 11, 2025

## Active Database Services (4)

### 1. PostgreSQL (Langfuse) ✅
- **Status**: Up 18 hours (healthy)
- **Container**: langfuse-postgres
- **Image**: postgres:15
- **Port**: 5432 (0.0.0.0:5432->5432/tcp)
- **Purpose**: Primary relational database for Langfuse analytics platform
- **Data Volume**: Persistent named volume
- **Health Check**: ✅ Healthy
- **Connection**: `postgresql://user:pass@localhost:5432/langfuse`
- **Integration Points**: Langfuse web application, analytics reporting

### 2. Redis (Langfuse Cache) ✅
- **Status**: Up 18 hours (healthy)
- **Container**: langfuse-redis
- **Image**: redis:7-alpine
- **Port**: 6379 (0.0.0.0:6379->6379/tcp)
- **Purpose**: Caching and session storage for Langfuse
- **Data Persistence**: Redis RDB snapshots
- **Health Check**: ✅ Healthy
- **Connection**: `redis://localhost:6379`
- **Integration Points**: Langfuse web sessions, API caching, background jobs

### 3. ClickHouse (Langfuse Analytics) ✅
- **Status**: Up 18 hours (healthy)
- **Container**: langfuse-clickhouse
- **Image**: clickhouse/clickhouse-server:24.1
- **Ports**: 
  - 8123 (HTTP interface): 0.0.0.0:8123->8123/tcp
  - 9000 (native protocol): 0.0.0.0:9000->9000/tcp
- **Purpose**: OLAP database for Langfuse analytics and reporting
- **Data Volume**: Persistent named volume
- **Health Check**: ✅ Healthy
- **Connection**: 
  - HTTP: `http://localhost:8123`
  - Native: `clickhouse://localhost:9000`
- **Integration Points**: Langfuse analytics, trace data storage, performance metrics

### 4. SQLite (n8n Workflows) ✅
- **Status**: Embedded database within n8n container
- **Container**: n8n-sqlite
- **File Location**: `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/n8n-sqlite/data/database.sqlite`
- **Purpose**: Workflow storage, execution history, settings for n8n
- **Data Persistence**: File-based SQLite database
- **Size**: Variable based on workflow complexity
- **Integration Points**: n8n workflow automation, execution logs, credentials storage

## Inactive Database Services (2)

### 1. SQLite (Flowise) ❌
- **Status**: Inactive (container not running)
- **Container**: flowise-sqlite (created but not started)
- **File Location**: `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/flowise-sqlite/data/database.sqlite`
- **Purpose**: AI workflow builder data storage
- **Action Required**: Start flowise-sqlite container if needed
- **Integration Points**: Flowise AI workflows (when active)

### 2. ChromaDB (Vector Database) ❌ - Currently Active but Listed for Completeness
**Note**: ChromaDB is actually active but included here as it's a specialized database

- **Status**: Up 16 hours (n8n-chroma container)
- **Container**: n8n-chroma
- **Image**: chromadb/chroma:latest
- **Port**: 3003 (0.0.0.0:3003->8000/tcp)
- **Purpose**: Vector database for AI embeddings and similarity search
- **Data Type**: Vector embeddings, document chunks
- **Integration Points**: n8n AI workflows, document processing, semantic search

## Database Types Classification

### Relational Databases (1 Active)
- **PostgreSQL**: Primary RDBMS for structured data and transactions

### Key-Value Stores (1 Active)
- **Redis**: In-memory cache and session store

### OLAP Databases (1 Active)
- **ClickHouse**: Analytics and time-series data processing

### Document/Embedded Databases (2 Active, 1 Inactive)
- **SQLite (n8n)**: Active - Embedded workflow storage
- **SQLite (Flowise)**: Inactive - AI workflow storage
- **ChromaDB**: Active - Vector similarity search

## Port Allocation

### Standard Database Ports
- **5432**: PostgreSQL (standard port)
- **6379**: Redis (standard port)
- **8123**: ClickHouse HTTP (standard port)
- **9000**: ClickHouse native (standard port)

### Custom Application Ports
- **3003**: ChromaDB (mapped from container port 8000)

### File-Based Databases
- **SQLite**: No network ports (file-based access)

## Connection Configurations

### Environment Variables Pattern
Most database connections configured via environment variables in Docker Compose:

```bash
# PostgreSQL
POSTGRES_DB=langfuse
POSTGRES_USER=langfuse
POSTGRES_PASSWORD=[from env]
POSTGRES_HOST=langfuse-postgres

# Redis
REDIS_HOST=langfuse-redis
REDIS_PORT=6379

# ClickHouse
CLICKHOUSE_HOST=langfuse-clickhouse
CLICKHOUSE_PORT=8123
```

### Connection String Examples
```bash
# PostgreSQL
postgresql://langfuse:password@localhost:5432/langfuse

# Redis
redis://localhost:6379

# ClickHouse HTTP
http://localhost:8123

# ChromaDB REST API
http://localhost:3003/api/v1
```

## Data Persistence Strategies

### Volume-Based Persistence (Container Databases)
- **PostgreSQL**: Named Docker volume
- **Redis**: RDB snapshots + AOF logging
- **ClickHouse**: Named Docker volume
- **ChromaDB**: Named Docker volume

### File-Based Persistence (SQLite)
- **n8n SQLite**: Host filesystem mount
- **Flowise SQLite**: Host filesystem mount

### Backup Strategies

#### Automated Backups
- **PostgreSQL**: pg_dump scheduled backups
- **Redis**: RDB snapshot persistence
- **ClickHouse**: Native backup system
- **SQLite**: File-based copying

#### Manual Backup Commands
```bash
# PostgreSQL backup
docker exec langfuse-postgres pg_dump -U langfuse langfuse > backup.sql

# Redis backup (triggered by BGSAVE)
docker exec langfuse-redis redis-cli BGSAVE

# SQLite backup
cp /path/to/database.sqlite /path/to/backup/
```

## Performance Monitoring

### Health Checks
- **PostgreSQL**: Connection test queries
- **Redis**: PING command response
- **ClickHouse**: HTTP health endpoint
- **SQLite**: File accessibility and integrity

### Performance Metrics
```bash
# Database connections
ss -tulpn | grep -E "(5432|6379|8123)"

# Container resource usage
docker stats langfuse-postgres langfuse-redis langfuse-clickhouse

# Disk usage
du -sh /var/lib/docker/volumes/langfuse*
```

## Security Considerations

### Network Security
- All databases bind to localhost only (not external interfaces)
- Container network isolation between service stacks
- No direct external database access

### Authentication
- **PostgreSQL**: Username/password authentication
- **Redis**: Password authentication (if configured)
- **ClickHouse**: User authentication system
- **SQLite**: File system permissions

### Data Encryption
- **At Rest**: Docker volume encryption (if configured)
- **In Transit**: TLS connections (production configuration)
- **Application Level**: Application-managed encryption for sensitive data

## Integration Relationships

### Langfuse Stack Integration
```
Langfuse Web App
├── PostgreSQL (primary data)
├── Redis (cache/sessions)
├── ClickHouse (analytics)
└── MinIO (object storage)
```

### n8n Stack Integration
```
n8n Automation Platform
├── SQLite (workflow data)
└── ChromaDB (vector storage)
```

### Cross-Stack Data Flow
- **Analytics Pipeline**: PostgreSQL → ClickHouse (ETL processes)
- **Cache Layer**: PostgreSQL → Redis (query caching)
- **AI Processing**: n8n → ChromaDB (vector operations)

## Database Administration

### Common Administrative Tasks

#### Daily Operations
```bash
# Check database health
docker ps | grep -E "(postgres|redis|clickhouse)"

# Monitor connections
ss -tulpn | grep LISTEN | grep -E "(5432|6379|8123)"

# View logs
docker logs langfuse-postgres --tail 50
```

#### Maintenance Operations
```bash
# Database optimization
docker exec langfuse-postgres psql -U langfuse -c "VACUUM ANALYZE;"

# Redis memory optimization
docker exec langfuse-redis redis-cli MEMORY USAGE [key]

# ClickHouse optimization
docker exec langfuse-clickhouse clickhouse-client --query "OPTIMIZE TABLE [table]"
```

### Troubleshooting Commands

#### Connection Issues
```bash
# Test PostgreSQL connection
docker exec langfuse-postgres psql -U langfuse -c "SELECT version();"

# Test Redis connection
docker exec langfuse-redis redis-cli ping

# Test ClickHouse connection
curl http://localhost:8123/ping
```

#### Performance Issues
```bash
# PostgreSQL active queries
docker exec langfuse-postgres psql -U langfuse -c "SELECT * FROM pg_stat_activity;"

# Redis info
docker exec langfuse-redis redis-cli info

# ClickHouse system metrics
curl "http://localhost:8123/?query=SELECT * FROM system.metrics"
```

## Capacity Planning

### Current Resource Usage
- **PostgreSQL**: Production-ready for moderate analytics workload
- **Redis**: Configured for session storage and moderate caching
- **ClickHouse**: Optimized for time-series analytics data
- **SQLite**: Suitable for workflow metadata storage

### Scaling Considerations
- **Horizontal Scaling**: Add read replicas for PostgreSQL
- **Vertical Scaling**: Increase container memory allocation
- **Storage Scaling**: Monitor volume usage and expand as needed
- **Performance Tuning**: Index optimization and query performance monitoring

## Database Schema Overview

### PostgreSQL (Langfuse)
- **Tables**: Users, projects, traces, observations, events
- **Indexes**: Optimized for analytics queries
- **Constraints**: Foreign keys, unique constraints

### Redis (Cache)
- **Data Types**: Strings, hashes, sets, sorted sets
- **TTL**: Configurable expiration for cache entries
- **Persistence**: RDB + AOF for durability

### ClickHouse (Analytics)
- **Tables**: Time-series event data, aggregated metrics
- **Partitioning**: Date-based partitioning for performance
- **Compression**: Optimized for analytical workloads

### SQLite (n8n)
- **Tables**: Workflows, executions, credentials, settings
- **Indexes**: Execution history optimization
- **Pragmas**: Performance optimizations for embedded use

---

*Last Updated: July 11, 2025 - Based on systematic database service discovery*  
*Part of the integration methods comprehensive inventory*