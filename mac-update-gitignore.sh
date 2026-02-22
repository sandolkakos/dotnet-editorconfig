#!/bin/bash
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .gitignore mac-update-gitignore.sh
git diff --cached --quiet || git commit -m "Sync .gitignore"
