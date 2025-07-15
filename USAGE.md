# Using EC Integration Templates

## Quick Start

### Setting up a New Project

1. **Use the setup script**:
   ```bash
   /home/ec-xps/Development/Shared/ec-integration-templates/shared-scripts/setup-new-project.sh ~/Development/Company/new-project company
   ```

2. **Project types available**:
   - `company` - Company-owned projects
   - `client` - Client projects
   - `application` - Standalone applications
   - `generic` - Generic projects (default)

### Manual Setup

1. **Copy CLAUDE.md template**:
   ```bash
   cp /home/ec-xps/Development/Shared/ec-integration-templates/claude-configs/project-templates/company-project.md ~/Development/Company/new-project/CLAUDE.md
   ```

2. **Copy .claude structure**:
   ```bash
   cp -r /home/ec-xps/Development/Shared/ec-integration-templates/.claude ~/Development/Company/new-project/
   ```

3. **Customize for your project**:
   - Edit CLAUDE.md with project-specific information
   - Update settings.json if needed
   - Add project-specific commands

## Shared Resources

### NO LYING POLICY Hook
All projects automatically use the global NO LYING POLICY validator:
- Location: `/home/ec-xps/.claude/hooks/no_lying_policy_validator.sh`
- Configured in: `.claude/settings/` templates

### Reusable Commands
Copy commands you need:
```bash
cp /home/ec-xps/Development/Shared/ec-integration-templates/.claude/commands/check-project-health.md ~/Development/Company/project/.claude/commands/
```

### Integration Method Templates
Use as starting points for documentation:
```bash
cp -r /home/ec-xps/Development/Shared/ec-integration-templates/.claude/integration-methods/* ~/Development/Company/project/.claude/integration-methods/
```

## Best Practices

1. **Always start with templates** - Don't create CLAUDE.md from scratch
2. **Keep NO LYING POLICY** - It's mandatory across all projects
3. **Document integrations** - Use the integration-methods structure
4. **Share improvements** - Submit useful patterns back to templates

## Updating Existing Projects

To update an existing project with latest templates:

1. **Compare CLAUDE.md sections**:
   - Keep project-specific content
   - Update policy sections from templates
   - Add missing auto-execute behaviors

2. **Update hooks configuration**:
   ```bash
   # Check current settings
   cat ~/Development/Company/project/.claude/settings.json
   
   # Compare with template
   cat /home/ec-xps/Development/Shared/ec-integration-templates/.claude/settings/project-settings-template.json
   ```

3. **Add new shared commands**:
   - Browse `.claude/commands/` for useful additions
   - Copy only what you need

## Directory Reference

- **Templates**: `/home/ec-xps/Development/Shared/ec-integration-templates/`
- **Global hooks**: `/home/ec-xps/.claude/hooks/`
- **Workspace commands**: `/home/ec-xps/.claude/commands/`
- **Archived reference**: `/home/ec-xps/Development/z-archive-EC-Development/`

## Contributing

When you create useful patterns:

1. **Test in your project first**
2. **Generalize for reuse**
3. **Add to appropriate template directory**
4. **Update documentation**

---

*Maintain consistency across the EC ecosystem by using and contributing to shared templates.*