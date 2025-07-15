Check the health and status of the current project.

Steps:
1. Show git status: `git status`
2. Check for uncommitted changes: `git diff --stat`
3. List any TODO comments: `grep -r "TODO" --include="*.js" --include="*.ts" --include="*.jsx" --include="*.tsx" --include="*.py" --include="*.md" . | head -20`
4. Check if tests exist: `find . -name "*.test.*" -o -name "*.spec.*" | head -10`
5. Verify CLAUDE.md exists: `test -f CLAUDE.md && echo "✅ CLAUDE.md exists" || echo "❌ CLAUDE.md missing"`
6. Check integration methods: `test -d .claude/integration-methods && echo "✅ Integration methods documented" || echo "⚠️  No integration methods"`
7. Display summary:
   ```
   echo "📊 Project Health Summary:"
   echo "  - Git status checked"
   echo "  - TODOs identified"
   echo "  - Test coverage reviewed"
   echo "  - Documentation status verified"
   ```