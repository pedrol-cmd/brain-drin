---
name: drin-git-rebase-conflict-solver
description: Systematic workflow for solving complex merge and rebase conflicts without losing work.
status: production
---

# Git Rebase Conflict Solver

## Purpose
To maintain a clean git history while ensuring code integrity during complex merges.

## Workflow
1. **Abort/Backup**: If lost, `git rebase --abort`. Create a backup branch.
2. **Rebase**: `git rebase [target]`.
3. **Conflict Identification**: Open files with `<<<<<<<` markers.
4. **Resolution**: Apply logic to merge both changes correctly.
5. **Continue**: `git add .` and `git rebase --continue`.

## Rules
- Never use `-f` (force) on shared branches without team sync.
- Verify the build/tests after every conflict resolution step.
