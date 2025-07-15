# GitHub CLI Integration
**Version:** v2.74.2  
**Status:** ✅ FULLY OPERATIONAL  
**Authentication:** empowercitizen account authenticated  
**Last Updated:** 2025-06-28

## Overview

GitHub CLI (gh) is fully integrated into the EC-Development workspace, providing seamless command-line access to GitHub features including repositories, issues, pull requests, and projects. The integration includes secure authentication via 1Password and direct integration with the EC-Development Project Hub.

## Installation & Authentication

### Current Status
- **GitHub CLI Version:** v2.74.2
- **Installation Location:** System-wide installation
- **Authentication Status:** ✅ Authenticated with empowercitizen account
- **Authentication Method:** Web-based OAuth flow
- **Token Storage:** Secure integration with 1Password vault

### Authentication Details
```bash
# Check current authentication status
gh auth status

# Re-authenticate if needed (should not be necessary)
gh auth login --web
```

## Integration with EC-Development Project Hub

### Project Hub Access
The GitHub CLI is configured to work with the existing **EC-Development Project Hub** on GitHub:
- **Project URL:** [EC-Development Project Hub on GitHub]
- **Access Level:** Full read/write access
- **Integration:** Direct command-line project management

### Project Management Commands
```bash
# List all projects
gh project list

# View project details
gh project view [PROJECT_NUMBER]

# Add items to project
gh project item-add [PROJECT_NUMBER] --url [ISSUE_OR_PR_URL]

# Update project items
gh project item-edit [PROJECT_NUMBER] [ITEM_ID] --field-id [FIELD_ID] --text "value"
```

## Core GitHub CLI Commands

### Repository Management
```bash
# List repositories
gh repo list

# Clone repository
gh repo clone [REPOSITORY]

# Create new repository
gh repo create [NAME] --private --description "Description"

# View repository details
gh repo view [REPOSITORY]
```

### Issue Management
```bash
# List issues
gh issue list

# Create new issue
gh issue create --title "Title" --body "Description"

# View issue details
gh issue view [ISSUE_NUMBER]

# Close issue
gh issue close [ISSUE_NUMBER]

# Assign issue
gh issue edit [ISSUE_NUMBER] --assignee @me
```

### Pull Request Management
```bash
# List pull requests
gh pr list

# Create pull request
gh pr create --title "Title" --body "Description"

# View pull request
gh pr view [PR_NUMBER]

# Merge pull request
gh pr merge [PR_NUMBER] --squash

# Check PR status
gh pr checks [PR_NUMBER]
```

### Workflow and Actions
```bash
# List workflow runs
gh run list

# View workflow run details
gh run view [RUN_ID]

# Re-run failed workflows
gh run rerun [RUN_ID]

# Download workflow artifacts
gh run download [RUN_ID]
```

## 1Password Integration

### Secure Token Management
GitHub CLI tokens are securely managed through 1Password:
- **Token Storage:** 1Password EC-Development vault
- **Reference:** `op://EC-Development/GitHub Personal Token/credential`
- **Auto-loading:** Configured in workspace environment

### Token Configuration
```bash
# Reference in .env.1p (safe to commit)
GITHUB_TOKEN="op://EC-Development/GitHub Personal Token/credential"

# Load token for commands
op run --env-file=".env.1p" -- gh [COMMAND]
```

## Workflow Integration

### Git + GitHub CLI Workflow
```bash
# Standard development workflow with GitHub CLI
git checkout -b feature/new-feature
# Make changes
git add .
git commit -m "Add new feature"
git push -u origin feature/new-feature

# Create PR directly from command line
gh pr create --title "Add new feature" --body "Description of changes"

# Check PR status
gh pr checks

# Merge when ready
gh pr merge --squash
```

### Project Integration Workflow
```bash
# Create issue and add to project
gh issue create --title "Implement feature" --body "Description"
gh project item-add [PROJECT_NUMBER] --url [ISSUE_URL]

# Link PR to issue
gh pr create --title "Fix #[ISSUE_NUMBER]: Implement feature"

# Update project status
gh project item-edit [PROJECT_NUMBER] [ITEM_ID] --field-id "Status" --text "In Progress"
```

## EC-Development Specific Commands

### Common Workflows
```bash
# Quick project status check
gh repo view
gh issue list --state open
gh pr list --state open

# Create feature branch and PR
git checkout -b feature/description
# (make changes)
git push -u origin feature/description
gh pr create --assignee @me

# Project management
gh project list
gh project view [PROJECT_NUMBER] --format json | jq .
```

### Automation Integration
```bash
# Used in automation scripts
~/EC-Development/Scripts/git/sync-to-github.sh
# Includes gh commands for automated GitHub operations
```

## Configuration

### GitHub CLI Configuration
```bash
# View current configuration
gh config list

# Set default editor
gh config set editor "code"

# Set default git protocol
gh config set git_protocol ssh
```

### Workspace Integration
GitHub CLI is integrated with:
- **Git Workflows:** Enhanced git operations with GitHub features
- **Project Management:** Direct CLI access to GitHub Projects
- **Issue Tracking:** Command-line issue management
- **CI/CD:** Workflow monitoring and management
- **Team Collaboration:** PR reviews and comments from CLI

## Advanced Features

### GitHub API Access
```bash
# Direct API calls
gh api /user
gh api /repos/:owner/:repo/issues
gh api /projects/[PROJECT_ID]/items

# Custom API queries
gh api graphql -f query='
  query {
    viewer {
      login
      repositories(first: 10) {
        nodes {
          name
          stargazerCount
        }
      }
    }
  }
'
```

### Scripting and Automation
```bash
# Export data for automation
gh issue list --json number,title,state --jq '.[] | select(.state=="open")'
gh pr list --json number,title,headRefName --jq '.[] | .headRefName'

# Bulk operations
gh issue list --json number | jq -r '.[].number' | xargs -I {} gh issue close {}
```

### Extensions
```bash
# List available extensions
gh extension list

# Install useful extensions
gh extension install github/gh-copilot
gh extension install vilmibm/gh-user-status
```

## Troubleshooting

### Common Issues

1. **Authentication Problems**
   ```bash
   # Check auth status
   gh auth status
   
   # Re-authenticate
   gh auth logout
   gh auth login --web
   ```

2. **Token Issues**
   ```bash
   # Check 1Password integration
   op run --env-file=".env.1p" -- env | grep GITHUB
   
   # Verify token validity
   op run --env-file=".env.1p" -- gh auth status
   ```

3. **Project Access Issues**
   ```bash
   # Verify project permissions
   gh project list
   
   # Check organization access
   gh api /user/orgs
   ```

### Debug Mode
```bash
# Enable debug output
GH_DEBUG=api gh [COMMAND]

# Verbose output
gh [COMMAND] --verbose
```

## Security Considerations

### Token Security
- ✅ Tokens stored securely in 1Password
- ✅ Environment variable injection (not hardcoded)
- ✅ Minimal token permissions (only required scopes)
- ✅ Regular token rotation capability

### Access Control
- ✅ Repository access limited to authorized repos
- ✅ Project access controlled by GitHub permissions
- ✅ Organization access based on membership

## Usage Examples

### Daily Development Workflow
```bash
# Morning routine
gh repo view                    # Check repo status
gh issue list --assignee @me    # My assigned issues
gh pr list --author @me         # My open PRs

# Feature development
git checkout -b feature/new-auth
# (develop feature)
gh pr create --draft --title "WIP: New authentication system"
gh pr ready                     # Mark as ready for review

# Project management
gh project item-add [PROJECT_ID] --url [PR_URL]
```

### Issue Management Workflow
```bash
# Create comprehensive issue
gh issue create \
  --title "Implement user authentication" \
  --body "## Description
User authentication system with OAuth support
  
## Acceptance Criteria
- [ ] OAuth integration
- [ ] User session management
- [ ] Security testing" \
  --assignee @me \
  --label "feature,high-priority"

# Link to project
gh project item-add [PROJECT_ID] --url [ISSUE_URL]
```

### Release Management
```bash
# Create release
gh release create v1.0.0 \
  --title "Version 1.0.0" \
  --notes "Initial release with core features" \
  --target main

# Upload release assets
gh release upload v1.0.0 build/app.zip
```

## Performance and Best Practices

### Efficient Commands
```bash
# Use JSON output for scripting
gh issue list --json number,title,state

# Limit results for performance
gh issue list --limit 20

# Use specific filters
gh pr list --state open --author @me
```

### Caching and Pagination
```bash
# Handle large datasets
gh api --paginate /repos/:owner/:repo/issues

# Use caching for repeated queries
gh config set cache_dir ~/.cache/gh
```

## Integration Points

### Related EC-Development Tools
- **Git Hooks:** GitHub CLI commands in pre/post-commit hooks
- **Automation Scripts:** Project synchronization and status updates
- **Conversation Archiving:** Link conversations to GitHub issues/PRs
- **Documentation:** Auto-generate documentation from GitHub data

### External Integrations
- **1Password:** Secure credential management
- **VS Code:** GitHub CLI integration via extensions
- **CI/CD:** GitHub Actions workflow management
- **Project Management:** Direct GitHub Projects CLI access

## Future Enhancements

### Planned Improvements
- Enhanced project automation scripts
- Custom GitHub CLI extensions for EC-Development workflows
- Integration with conversation archiving system
- Automated issue/PR linking

### Advanced Features
- GitHub Copilot CLI integration
- Custom workflow templates
- Automated project status updates
- Enhanced reporting and analytics

## Related Documentation

- **Git Workflows:** `/home/ec-xps/EC-Development/Documentation/README-git-github-workflow.md`
- **1Password Integration:** `/home/ec-xps/EC-Development/Documentation/README-1password-secret-management.md`
- **Automation Scripts:** `/home/ec-xps/EC-Development/Scripts/git/README-git.md`

---

**Note:** GitHub CLI is automatically maintained as part of the workspace setup and integrated with the CLAUDE.md hierarchy management system for seamless development workflows.