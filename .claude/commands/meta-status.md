Show status of all repositories in the multi-repo ecosystem.

Steps:
1. Navigate to meta hub: `cd ~/Development`
2. Show meta configuration: `cat .meta | jq '.'`
3. Run git status across all repos: `meta git status`
4. Show current branches: `meta exec "git branch --show-current"`
5. Display summary:
   ```
   echo "📊 Multi-Repo Status Summary:"
   echo "  - Company: ec-ai-agent-hub"
   echo "  - Clients: demo-client, salsambo-studio"
   echo "  - Shared: ec-integration-templates"
   echo ""
   echo "Use 'meta git pull' to update all repositories"
   echo "Use 'meta exec <command>' to run commands across all repos"
   ```