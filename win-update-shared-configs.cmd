git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .editorconfig .gitignore win-update-shared-configs.cmd
git diff --cached --quiet || git commit -m "Sync shared configs"