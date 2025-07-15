# {{PROJECT_NAME}} - Integration Methods Overview

## {{PROJECT_TYPE}} Integration Strategy
{{PROJECT_DESCRIPTION}}

## Active Integration Methods

### 1. {{PRIMARY_FRAMEWORK}} ({{FRAMEWORK_TYPE}})
- **Status**: ✅ ACTIVE
- **Type**: {{FRAMEWORK_DESCRIPTION}}
- **Configuration**: `{{CONFIG_FILE}}`
- **Development**: `{{DEV_COMMAND}}`
- **Build**: `{{BUILD_COMMAND}}`

### 2. {{BACKEND_SERVICE}} ({{SERVICE_TYPE}})
- **Status**: ✅ ACTIVE  
- **Type**: {{SERVICE_DESCRIPTION}}
- **Configuration**: `{{BACKEND_CONFIG}}`
- **Features**: {{BACKEND_FEATURES}}
- **API**: {{API_ENDPOINTS}}

### 3. {{STYLING_FRAMEWORK}} ({{STYLING_TYPE}})
- **Status**: ✅ ACTIVE
- **Type**: {{STYLING_DESCRIPTION}}
- **Configuration**: `{{STYLING_CONFIG}}`
- **Build Process**: {{STYLING_BUILD}}

### 4. {{ADDITIONAL_TECH}} ({{TECH_TYPE}})
- **Status**: ✅ ACTIVE
- **Type**: {{TECH_DESCRIPTION}}
- **Configuration**: `{{TECH_CONFIG}}`
- **Purpose**: {{TECH_PURPOSE}}

### 5. {{ENVIRONMENT_MANAGEMENT}}
- **Status**: ✅ ACTIVE
- **Local**: `{{LOCAL_ENV}}`
- **Template**: `{{ENV_TEMPLATE}}`
- **Security**: {{ENV_SECURITY}}

## Development Workflow
```bash
# Installation
{{INSTALL_COMMAND}}

# Development server
{{DEV_COMMAND}}

# {{ADDITIONAL_COMMANDS}}

# Build for production
{{BUILD_COMMAND}}

# {{PRODUCTION_COMMANDS}}
```

## {{PROJECT_TYPE}} Features
- {{FEATURE_1}}
- {{FEATURE_2}}
- {{FEATURE_3}}
- {{FEATURE_4}}
- {{FEATURE_5}}

## {{DATABASE_SECTION}} ({{DATABASE_TYPE}})
- {{DATABASE_FEATURES}}

## {{AUTH_SECTION}} ({{AUTH_TYPE}})
- {{AUTH_FEATURES}}

## Security Considerations
- {{SECURITY_POINT_1}}
- {{SECURITY_POINT_2}}
- {{SECURITY_POINT_3}}
- {{SECURITY_POINT_4}}

## Related Repositories
- **Parent Hub**: `empowercitizen/ec-ai-agent-hub`
- **Templates**: `empowercitizen/ec-integration-templates`
- **Meta Repository**: `~/Development/.meta`

---
*Part of the multi-repo {{ECOSYSTEM_TYPE}} ecosystem*

## Template Usage Instructions

### 1. Copy Template
```bash
cp ec-integration-templates/claude-configs/integration-methods/integration-methods-template.md project/.claude/integration-methods/README-integration-methods-overview.md
```

### 2. Replace Placeholders
Replace all `{{PLACEHOLDER}}` values with project-specific information:

**Project Information:**
- `{{PROJECT_NAME}}`: Project name (e.g., "Demo Client", "Salsambo Studio")
- `{{PROJECT_TYPE}}`: Project category (e.g., "Client Project", "Company Platform")
- `{{PROJECT_DESCRIPTION}}`: Brief project description
- `{{ECOSYSTEM_TYPE}}`: Type of ecosystem (e.g., "client project", "development platform")

**Technology Stack:**
- `{{PRIMARY_FRAMEWORK}}`: Main framework (Next.js, React, etc.)
- `{{FRAMEWORK_TYPE}}`: Framework category (React-based framework, etc.)
- `{{FRAMEWORK_DESCRIPTION}}`: Framework description
- `{{BACKEND_SERVICE}}`: Backend service (Supabase, Sanity, etc.)
- `{{SERVICE_TYPE}}`: Service category (Headless CMS, BaaS, etc.)
- `{{SERVICE_DESCRIPTION}}`: Service description
- `{{STYLING_FRAMEWORK}}`: CSS framework (Tailwind CSS, etc.)
- `{{STYLING_TYPE}}`: Styling approach (Utility-first CSS framework, etc.)
- `{{STYLING_DESCRIPTION}}`: Styling description

**Configuration Files:**
- `{{CONFIG_FILE}}`: Main configuration file (next.config.js, vite.config.ts, etc.)
- `{{BACKEND_CONFIG}}`: Backend configuration file
- `{{STYLING_CONFIG}}`: Styling configuration file
- `{{TECH_CONFIG}}`: Additional technology configuration
- `{{LOCAL_ENV}}`: Local environment file (.env.local, etc.)
- `{{ENV_TEMPLATE}}`: Environment template file

**Commands:**
- `{{INSTALL_COMMAND}}`: Installation command (npm install, bun install, etc.)
- `{{DEV_COMMAND}}`: Development server command
- `{{BUILD_COMMAND}}`: Build command
- `{{ADDITIONAL_COMMANDS}}`: Any additional development commands
- `{{PRODUCTION_COMMANDS}}`: Production-specific commands

**Features and Sections:**
- `{{BACKEND_FEATURES}}`: Backend service features
- `{{API_ENDPOINTS}}`: API information
- `{{TECH_PURPOSE}}`: Purpose of additional technology
- `{{FEATURE_1-5}}`: Project-specific features
- `{{DATABASE_SECTION}}`: Database section title
- `{{DATABASE_TYPE}}`: Database technology
- `{{DATABASE_FEATURES}}`: Database-related features
- `{{AUTH_SECTION}}`: Authentication section title
- `{{AUTH_TYPE}}`: Authentication method
- `{{AUTH_FEATURES}}`: Authentication features
- `{{SECURITY_POINT_1-4}}`: Security considerations
- `{{ENV_SECURITY}}`: Environment security notes

### 3. Customize Sections
- Add project-specific integration methods
- Include technology-specific configuration details
- Document development workflow patterns
- Add security considerations relevant to the stack

### 4. Maintain Documentation
- Update when adding new technologies
- Keep commands and configurations current
- Document integration patterns that work well
- Include troubleshooting tips for common issues