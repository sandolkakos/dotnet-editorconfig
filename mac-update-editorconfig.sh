#!/bin/bash
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .editorconfig mac-update-editorconfig.sh
git diff --cached --quiet || git commit -m "Sync .editorconfig"
