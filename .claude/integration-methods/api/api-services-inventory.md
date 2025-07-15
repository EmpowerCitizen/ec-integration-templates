# API Services Inventory

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/api/api-services-inventory.md`  
**Created**: July 11, 2025  
**Purpose**: Complete inventory of all API services and endpoints

## API Services Status Summary

**Total API Services**: 8 (6 Active, 2 Inactive)  
**Discovery Commands**: 
- `ss -tulpn | grep LISTEN | grep -E "(3000|3001|3002|3003|8000|8080|8123|9000|9001|9091)"`
- `curl -s -o /dev/null -w "%{http_code}" [endpoint]`
- `docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"`  
**Discovery Date**: July 11, 2025

## Active API Services (6)

### 1. n8n Workflow API ✅
- **Status**: Active (HTTP 200)
- **Port**: 3002
- **Container**: n8n-sqlite
- **Endpoint**: `http://localhost:3002`
- **API Type**: REST API
- **Purpose**: Workflow automation and integration platform
- **Authentication**: API key, webhook authentication
- **Key Endpoints**:
  - `/api/v1/workflows` - Workflow management
  - `/api/v1/executions` - Execution management
  - `/webhook/[webhook-id]` - Webhook endpoints
- **Documentation**: Built-in Swagger UI at `/api-docs`
- **Integration Points**: External systems, webhook triggers, scheduled workflows

### 2. Langfuse Web API ❌ (Service Issues)
- **Status**: Service available but unhealthy (HTTP 404 on health endpoints)
- **Port**: 3000
- **Container**: langfuse-web (marked as unhealthy)
- **Endpoint**: `http://localhost:3000`
- **API Type**: REST API + GraphQL
- **Purpose**: LLM observability and analytics platform
- **Issue**: Container marked as unhealthy, API endpoints not responding properly
- **Expected Endpoints**:
  - `/api/public/traces` - Trace management
  - `/api/public/generations` - Generation tracking
  - `/api/public/scores` - Scoring system
- **Authentication**: API keys, project-based access
- **Action Required**: Investigate container health issues

### 3. ChromaDB Vector API ✅
- **Status**: Active (HTTP 410 - expected response for root endpoint)
- **Port**: 3003 (mapped from container port 8000)
- **Container**: n8n-chroma
- **Endpoint**: `http://localhost:3003`
- **API Type**: REST API
- **Purpose**: Vector database for embeddings and similarity search
- **Key Endpoints**:
  - `/api/v1/collections` - Collection management
  - `/api/v1/collections/{collection}/add` - Add vectors
  - `/api/v1/collections/{collection}/query` - Vector search
- **Authentication**: None (internal service)
- **Integration Points**: n8n AI workflows, document processing

### 4. ClickHouse HTTP API ✅
- **Status**: Active (HTTP 200)
- **Port**: 8123
- **Container**: langfuse-clickhouse
- **Endpoint**: `http://localhost:8123`
- **API Type**: HTTP interface for SQL queries
- **Purpose**: Analytics database HTTP interface
- **Key Endpoints**:
  - `/ping` - Health check
  - `/?query=[SQL]` - Direct SQL execution
  - `/play` - Interactive SQL interface
- **Authentication**: User/password (if configured)
- **Integration Points**: Langfuse analytics, custom reporting tools

### 5. MinIO Object Storage API ✅
- **Status**: Active (assumed based on container health)
- **Ports**: 
  - 9001 (Console): `http://localhost:9001`
  - 9091 (API): `http://localhost:9091`
- **Container**: langfuse-minio
- **API Type**: S3-compatible REST API
- **Purpose**: Object storage for files and artifacts
- **Key Endpoints**:
  - `/minio/health/live` - Liveness check
  - `/[bucket]/[object]` - Object operations
  - Console UI at port 9001
- **Authentication**: Access key and secret key
- **Integration Points**: Langfuse file storage, backup systems

### 6. ClickHouse Native Protocol ✅
- **Status**: Active (native protocol listener)
- **Port**: 9000
- **Container**: langfuse-clickhouse
- **Protocol**: ClickHouse native binary protocol
- **Purpose**: High-performance database connections
- **Client Libraries**: Native ClickHouse clients
- **Integration Points**: High-performance analytics applications

## Inactive API Services (2)

### 1. Task Master MCP API ❌
- **Status**: Inactive (container exited with code 254)
- **Container**: Claude-TaskMaster
- **Expected Port**: Various (container-specific)
- **Purpose**: Task management and project automation API
- **Action Required**: Investigate exit code 254 and restart if needed
- **Integration Points**: Claude Code sessions, project management

### 2. Flowise API ❌
- **Status**: Inactive (container created but not started)
- **Container**: flowise-sqlite
- **Expected Port**: 3001 (typical Flowise port)
- **Purpose**: AI workflow builder API
- **Action Required**: Start container if AI workflow building is needed
- **Integration Points**: AI agent workflows, LLM orchestration

## API Security Configuration

### Authentication Methods

#### API Key Authentication
- **n8n**: API key in headers
- **Langfuse**: Project-based API keys
- **MinIO**: Access key and secret key

#### Network Security
- **Binding**: All APIs bind to localhost only (not external interfaces)
- **Isolation**: Container network isolation between service stacks
- **Firewall**: No external API access by default

#### CORS Configuration
- **n8n**: Configurable CORS for webhook endpoints
- **Langfuse**: CORS configured for web UI integration
- **ChromaDB**: Internal service, no CORS needed

### Rate Limiting
- **n8n**: Configurable rate limiting on webhook endpoints
- **Langfuse**: Rate limiting on public API endpoints
- **ClickHouse**: Query timeout and resource limits

## API Documentation Standards

### Swagger/OpenAPI
- **n8n**: Built-in Swagger UI available
- **Langfuse**: OpenAPI specifications in codebase
- **ChromaDB**: REST API documentation available

### Integration Examples

#### n8n Workflow Automation
```bash
# Create workflow via API
curl -X POST http://localhost:3002/api/v1/workflows \
  -H "X-N8N-API-KEY: [api-key]" \
  -d @workflow.json

# Trigger workflow execution
curl -X POST http://localhost:3002/api/v1/workflows/[id]/activate \
  -H "X-N8N-API-KEY: [api-key]"
```

#### ChromaDB Vector Operations
```bash
# Create collection
curl -X POST http://localhost:3003/api/v1/collections \
  -H "Content-Type: application/json" \
  -d '{"name": "documents", "metadata": {"description": "Document embeddings"}}'

# Add vectors
curl -X POST http://localhost:3003/api/v1/collections/documents/add \
  -H "Content-Type: application/json" \
  -d '{"embeddings": [[0.1, 0.2, 0.3]], "documents": ["text"], "ids": ["1"]}'
```

#### ClickHouse Analytics Queries
```bash
# Execute SQL query
curl "http://localhost:8123/?query=SELECT%20count()%20FROM%20traces"

# Get system information
curl "http://localhost:8123/?query=SELECT%20*%20FROM%20system.tables%20LIMIT%205"
```

## API Monitoring and Health Checks

### Health Check Endpoints

#### Available Health Checks
```bash
# n8n health check
curl http://localhost:3002/health

# ClickHouse ping
curl http://localhost:8123/ping

# ChromaDB heartbeat
curl http://localhost:3003/api/v1/heartbeat
```

#### Custom Health Monitoring Script
```bash
#!/bin/bash
# API health monitoring
services=("3002:n8n" "8123:clickhouse" "3003:chroma")

for service in "${services[@]}"; do
  port=$(echo $service | cut -d: -f1)
  name=$(echo $service | cut -d: -f2)
  
  if curl -s -o /dev/null http://localhost:$port; then
    echo "✅ $name API ($port) - OK"
  else
    echo "❌ $name API ($port) - FAILED"
  fi
done
```

### Performance Monitoring

#### Response Time Monitoring
```bash
# n8n API response time
curl -w "@curl-format.txt" -o /dev/null -s http://localhost:3002/api/v1/workflows

# ClickHouse query performance
time curl "http://localhost:8123/?query=SELECT%20count()%20FROM%20system.tables"
```

#### Error Rate Monitoring
- **n8n**: Built-in execution error tracking
- **Langfuse**: Error logging and metrics
- **ClickHouse**: Query error logging

## API Integration Patterns

### Microservices Architecture
```
Client Applications
├── n8n API (Workflow automation)
├── Langfuse API (LLM observability)
├── ChromaDB API (Vector search)
├── ClickHouse API (Analytics)
└── MinIO API (Object storage)
```

### Data Flow Patterns
1. **Workflow Triggers**: External systems → n8n webhooks
2. **LLM Tracking**: Applications → Langfuse API → Analytics
3. **Vector Search**: n8n workflows → ChromaDB API
4. **Analytics**: Langfuse → ClickHouse → Reporting tools
5. **File Storage**: Applications → MinIO API

### API Gateway Consideration
Currently no API gateway implemented. Each service exposes its own API directly.

## Development and Testing

### API Testing Tools
```bash
# curl for quick tests
curl -X GET http://localhost:3002/api/v1/workflows

# HTTPie for better formatting
http GET localhost:3002/api/v1/workflows X-N8N-API-KEY:[key]

# Postman collections (if available)
# Custom test scripts in project directories
```

### API Development Workflow
1. **Local Development**: Direct API calls to localhost endpoints
2. **Integration Testing**: Container-based testing environment
3. **Documentation**: Update API documentation with changes
4. **Version Management**: API versioning for backward compatibility

## Configuration Management

### Environment Variables
Most APIs configured via Docker Compose environment variables:

```yaml
# n8n configuration
N8N_BASIC_AUTH_ACTIVE: true
N8N_BASIC_AUTH_USER: admin
WEBHOOK_URL: http://localhost:3002

# Langfuse configuration  
NEXTAUTH_URL: http://localhost:3000
DATABASE_URL: postgresql://...

# ChromaDB configuration
CHROMA_HOST: 0.0.0.0
CHROMA_PORT: 8000
```

### API Keys Management
- **Storage**: Environment variables in Docker Compose
- **Rotation**: Manual key rotation process
- **Access Control**: Project-level and service-level keys

## Troubleshooting Guide

### Common API Issues

#### Connection Refused
```bash
# Check if container is running
docker ps | grep [container-name]

# Check port binding
ss -tulpn | grep [port]

# Test basic connectivity
curl -v http://localhost:[port]
```

#### Authentication Failures
```bash
# Verify API key format
echo $API_KEY | base64 -d

# Test with curl verbose mode
curl -v -H "Authorization: Bearer $API_KEY" http://localhost:[port]/api
```

#### Performance Issues
```bash
# Check container resource usage
docker stats [container-name]

# Monitor API response times
curl -w "%{time_total}" http://localhost:[port]/api/endpoint
```

### API Error Codes

#### HTTP Status Patterns
- **200**: Successful operation
- **401**: Authentication required/failed
- **403**: Insufficient permissions
- **404**: Endpoint or resource not found
- **429**: Rate limit exceeded
- **500**: Internal server error

#### Service-Specific Codes
- **n8n**: Workflow execution status codes
- **ClickHouse**: SQL error codes
- **ChromaDB**: Vector operation error codes

## Future API Enhancements

### Planned Improvements
1. **API Gateway**: Centralized routing and authentication
2. **Rate Limiting**: Enhanced rate limiting across all services
3. **Monitoring**: Comprehensive API metrics and alerting
4. **Documentation**: Interactive API documentation portal
5. **Security**: Enhanced authentication and authorization

### Integration Opportunities
1. **Unified API**: Single endpoint for multiple services
2. **Event Streaming**: Real-time API event notifications
3. **GraphQL**: Unified GraphQL endpoint for complex queries
4. **Webhook Management**: Centralized webhook configuration

---

*Last Updated: July 11, 2025 - Based on systematic API service discovery*  
*Part of the integration methods comprehensive inventory*