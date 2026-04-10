---
description: "Plan and implement a feature end-to-end — design, code, test, review"
argument-hint: "<feature description>"
---

# Feature Development

## Context

- Feature request: $ARGUMENTS
- Current codebase: !`git log --oneline -5`
- Project structure: explore with Glob and Read

## Your Task

### Phase 1: Plan (show before coding)
- What files need to change?
- What's the approach?
- Any design decisions to make?
- What tests are needed?

### Phase 2: Implement
- Write the code following existing patterns and conventions
- Keep changes minimal — don't refactor unrelated code
- Handle errors at boundaries, not everywhere

### Phase 3: Test
- Write tests for critical paths and edge cases
- Run existing tests to check for regressions

### Phase 4: Review
- Self-review: any security issues? Performance concerns? Missing edge cases?
- Summarize what was done and what to watch for

## Rules

- Follow existing patterns. Don't introduce new frameworks or patterns without justification.
- One feature per session. Don't scope-creep.
- If the feature is too large for one session, break it into shippable increments and implement the first one.
