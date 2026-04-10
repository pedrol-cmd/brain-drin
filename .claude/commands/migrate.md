---
description: "Code migration — upgrade framework versions, migrate APIs, modernize legacy patterns"
argument-hint: "<from-version to-version> or <description of migration>"
---

# Code Migration

## Context

- Migration: $ARGUMENTS
- Current state: explore package.json, config files, code patterns

## Your Task

1. **Assess scope** — What needs to change? How many files affected?
2. **Read migration guide** — Use WebSearch/context7 for official migration docs
3. **Plan** — List all changes needed, ordered by dependency
4. **Execute** — Make changes file by file, running tests after each batch
5. **Verify** — Full test suite + manual smoke test of critical paths

## Output Before Starting

```
## Migration Plan: [from] → [to]

### Breaking Changes
- [list of breaking changes that affect this codebase]

### Files to Change
- [file list with what changes in each]

### Risk Areas
- [what might break, what to watch]

### Estimated Scope
- [number of files, estimated effort]
```

Wait for approval before executing.

## Rules

- Never migrate and refactor at the same time
- One major dependency at a time
- Tests must pass after each batch of changes
- If migration guide is ambiguous, test both interpretations
