#!/bin/bash
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .editorconfig .gitignore mac-update-shared-configs.sh
git diff --cached --quiet || git commit -m "Sync shared configs"
