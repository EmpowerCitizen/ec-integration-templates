# Client Project CLAUDE.md Template
# Version: v2.0-template
# Project Type: Client Website/Application

## Multi-Repo Configuration
**Repository**: empowercitizen/{{PROJECT_NAME}}
**Location**: ~/Development/Clients/{{PROJECT_NAME}}
**Parent Hub**: empowercitizen/ec-ai-agent-hub

## 🚨 CRITICAL: NO LYING POLICY
**Status**: ✅ VERIFIED WORKING - Stop hooks implemented and tested
**Hook Event**: Stop (validates complete responses) 
**Enforcement**: Exit code 2 blocks false claims and provides feedback to Claude
**Test Status**: ✅ Confirmed blocking of false monitoring claims
**Last Verified**: 2025-07-12 with actual violation test

## Project Purpose
{{PROJECT_DESCRIPTION}}

## Technical Stack
- **Frontend**: {{FRONTEND_FRAMEWORK}}
- **Backend/CMS**: {{BACKEND_SERVICE}}
- **Styling**: {{STYLING_FRAMEWORK}}
- **Database**: {{DATABASE_TECHNOLOGY}}
- **Authentication**: {{AUTH_METHOD}}
- **Deployment**: {{DEPLOYMENT_PLATFORM}}

## Project Structure
```
{{PROJECT_NAME}}/
├── src/                     # Application source code
│   ├── components/          # Reusable components
│   ├── pages/              # Page components
│   ├── hooks/              # Custom hooks (if React)
│   ├── lib/                # Utility functions
│   ├── types/              # TypeScript definitions
│   └── styles/             # Styling files
├── public/                 # Static assets
├── .claude/                # Claude configuration
│   └── integration-methods/ # Integration documentation
├── .env.template           # Environment variables template
└── README.md               # Project documentation
```

## {{BACKEND_SERVICE}} Integration
- **Organization**: {{ORGANIZATION_NAME}}
- **Project ID**: {{PROJECT_ID}}
- **Configuration**: {{CONFIG_FILES}}
- **Features**: {{KEY_FEATURES}}

## Client Business Model
- **Target Audience**: {{TARGET_AUDIENCE}}
- **Revenue Model**: {{REVENUE_MODEL}}
- **Key Features**: {{BUSINESS_FEATURES}}
- **Success Metrics**: {{SUCCESS_METRICS}}

## Development Commands
```bash
# Installation
{{INSTALL_COMMAND}}

# Development server
{{DEV_COMMAND}}

# Production build
{{BUILD_COMMAND}}

# Testing
{{TEST_COMMAND}}

# Linting
{{LINT_COMMAND}}
```

## Customization Points
### Client Branding
- {{BRANDING_FEATURES}}

### Content Management
- {{CONTENT_FEATURES}}

### Code Customization
- {{CODE_CUSTOMIZATION}}

## Deployment Strategy
- **Primary**: {{PRIMARY_DEPLOYMENT}}
- **Alternative**: {{ALTERNATIVE_DEPLOYMENT}}
- **Domain**: {{DOMAIN_STRATEGY}}
- **SSL**: {{SSL_CONFIGURATION}}

## Client Onboarding Process
1. **Project Setup**: {{SETUP_PROCESS}}
2. **Content Configuration**: {{CONTENT_SETUP}}
3. **Customization**: {{CUSTOMIZATION_PROCESS}}
4. **Testing**: {{TESTING_PROCESS}}
5. **Deployment**: {{DEPLOYMENT_PROCESS}}
6. **Training**: {{TRAINING_PROCESS}}

## Quality Standards
- **TypeScript**: {{TYPESCRIPT_USAGE}}
- **Responsive**: {{RESPONSIVE_REQUIREMENTS}}
- **Performance**: {{PERFORMANCE_REQUIREMENTS}}
- **SEO**: {{SEO_REQUIREMENTS}}
- **Accessibility**: {{ACCESSIBILITY_REQUIREMENTS}}

## Security Practices
- **Environment Variables**: {{ENV_VAR_STRATEGY}}
- **Authentication**: {{AUTH_SECURITY}}
- **Data Protection**: {{DATA_PROTECTION}}
- **HTTPS**: {{HTTPS_REQUIREMENTS}}

## Integration Points
- **Analytics**: {{ANALYTICS_INTEGRATION}}
- **Communication**: {{COMMUNICATION_TOOLS}}
- **Social Media**: {{SOCIAL_INTEGRATION}}
- **Third-party Services**: {{THIRD_PARTY_SERVICES}}

## Success Metrics
- **Performance**: {{PERFORMANCE_METRICS}}
- **User Experience**: {{UX_METRICS}}
- **Business Goals**: {{BUSINESS_METRICS}}
- **Technical Quality**: {{TECHNICAL_METRICS}}

## Related Multi-Repo Ecosystem
- **Parent Hub**: empowercitizen/ec-ai-agent-hub
- **Templates**: empowercitizen/ec-integration-templates
- **Meta Management**: ~/Development/.meta

---

*{{PROJECT_SUMMARY}}*

## Template Usage Instructions

### 1. Copy Template
```bash
cp ec-integration-templates/claude-configs/project-templates/client-project-template.md new-project/CLAUDE.md
```

### 2. Replace Placeholders
Replace all `{{PLACEHOLDER}}` values with project-specific information:

- `{{PROJECT_NAME}}`: Repository and directory name
- `{{PROJECT_DESCRIPTION}}`: Brief project description
- `{{FRONTEND_FRAMEWORK}}`: React, Next.js, Vue.js, etc.
- `{{BACKEND_SERVICE}}`: Supabase, Sanity, Firebase, etc.
- `{{STYLING_FRAMEWORK}}`: Tailwind CSS, styled-components, etc.
- `{{DATABASE_TECHNOLOGY}}`: PostgreSQL, MongoDB, etc.
- `{{AUTH_METHOD}}`: Authentication strategy
- `{{DEPLOYMENT_PLATFORM}}`: Vercel, Netlify, etc.

### 3. Customize Sections
- Update project structure to match actual architecture
- Modify development commands for specific tools
- Adapt business model section for client requirements
- Include project-specific integrations and features

### 4. Validate Configuration
- Ensure all placeholders are replaced
- Verify commands and file paths are correct
- Test that project structure matches reality
- Confirm integration methods are documented