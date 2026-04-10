---
name: drin-documentation-drift-detector
description: Investigative workflow for identifying documentation that no longer matches the implementation.
status: production
---

# Documentation Drift Detector

## Purpose
To prevent developer frustration by ensuring that guides and manuals remain accurate.

## Actions
1. **Compare**: Manually or automated comparison of API docs with endpoints.
2. **Verify Code**: Running code snippets from READMEs to ensure they still work.
3. **Stale Check**: Flagging pages not updated in > 6 months.

## Rules
- Stale documentation is worse than no documentation.
- Update the documentation as part of the PR, not after.
---
subagents:
  - technical-writer
  - code-reviewer
