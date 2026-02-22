git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .editorconfig win-update-editorconfig.cmd
git diff --cached --quiet || git commit -m "Sync .editorconfig"