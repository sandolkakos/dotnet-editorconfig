git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .gitignore win-update-gitignore.cmd
git diff --cached --quiet || git commit -m "Sync .gitignore"