#!/bin/bash
# Setup New Project Script
# Version: v1.0-2025-07-15
# Purpose: Initialize a new project with EC standards

PROJECT_DIR="$1"
PROJECT_TYPE="${2:-generic}" # generic, company, client, application

if [ -z "$PROJECT_DIR" ]; then
    echo "Usage: $0 <project-directory> [project-type]"
    echo "Project types: generic, company, client, application"
    exit 1
fi

echo "🚀 Setting up new project at: $PROJECT_DIR"
echo "📋 Project type: $PROJECT_TYPE"

# Create project directory
mkdir -p "$PROJECT_DIR"

# Create .claude directory structure
mkdir -p "$PROJECT_DIR/.claude/"{commands,hooks,integration-methods}

# Copy appropriate CLAUDE.md template
TEMPLATE_DIR="$(dirname "$0")/../claude-configs/project-templates"
case "$PROJECT_TYPE" in
    company)
        cp "$TEMPLATE_DIR/company-project.md" "$PROJECT_DIR/CLAUDE.md"
        ;;
    client)
        cp "$TEMPLATE_DIR/client-project.md" "$PROJECT_DIR/CLAUDE.md"
        ;;
    application)
        cp "$TEMPLATE_DIR/application-project.md" "$PROJECT_DIR/CLAUDE.md"
        ;;
    *)
        cp "$TEMPLATE_DIR/generic-project.md" "$PROJECT_DIR/CLAUDE.md"
        ;;
esac

# Copy settings template
cp "$(dirname "$0")/../.claude/settings/project-settings-template.json" "$PROJECT_DIR/.claude/settings.json"

# Create integration-methods structure
mkdir -p "$PROJECT_DIR/.claude/integration-methods/"{mcp,docker,api,cli,webhooks}

# Create basic README
cat > "$PROJECT_DIR/.claude/integration-methods/README.md" << 'EOF'
# Integration Methods

This directory contains documentation for all integration patterns used in this project.

## Categories
- **mcp/**: Model Context Protocol servers
- **docker/**: Container configurations
- **api/**: API integration patterns
- **cli/**: Command-line tools
- **webhooks/**: Event-driven integrations

## Usage
Document each integration method with:
1. Configuration requirements
2. Setup instructions
3. Usage examples
4. Troubleshooting tips
EOF

# Initialize git if not already a repo
if [ ! -d "$PROJECT_DIR/.git" ]; then
    cd "$PROJECT_DIR" && git init
fi

# Create .gitignore if it doesn't exist
if [ ! -f "$PROJECT_DIR/.gitignore" ]; then
    cat > "$PROJECT_DIR/.gitignore" << 'EOF'
# Environment files
.env
.env.local
*.env

# Claude local settings
.claude/settings.local.json
CLAUDE.local.md

# Dependencies
node_modules/
venv/
__pycache__/

# Build outputs
dist/
build/
*.pyc

# IDE
.vscode/
.idea/

# OS
.DS_Store
Thumbs.db
EOF
fi

echo "✅ Project setup complete!"
echo ""
echo "Next steps:"
echo "1. cd $PROJECT_DIR"
echo "2. Edit CLAUDE.md to customize for your project"
echo "3. Add your project-specific commands to .claude/commands/"
echo "4. Document integration methods in .claude/integration-methods/"
echo "5. Run 'claude' to start development"