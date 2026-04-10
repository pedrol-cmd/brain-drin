---
description: "Identify and prioritize technical debt — code smells, outdated deps, missing tests, architecture issues"
argument-hint: "[directory-path]"
---

# Tech Debt Analysis

## Context

- Target: $ARGUMENTS (default: current directory)
- Dependencies: check for outdated packages
- Test coverage: check existing tests

## Your Task

Scan for:

### Code Quality
- Duplicated code blocks
- Functions over 50 lines
- Files over 300 lines
- Complex conditionals (cyclomatic complexity)
- Dead code (unused exports, unreachable branches)
- TODO/FIXME/HACK comments

### Dependencies
- Outdated packages (major versions behind)
- Deprecated packages
- Packages with known vulnerabilities
- Unused dependencies

### Testing
- Critical paths without tests
- Flaky tests (if test history available)
- Tests that test implementation instead of behavior

### Architecture
- Circular dependencies
- God objects/modules
- Leaky abstractions
- Inconsistent patterns across the codebase

## Output

```
## Tech Debt Report

### Critical (fix now)
[Items that will cause bugs or security issues]

### High (fix this sprint)
[Items causing developer pain or slowing velocity]

### Medium (fix this quarter)
[Items that will compound if ignored]

### Low (backlog)
[Nice to have improvements]

### Quick Wins
[Items that take <30min and remove meaningful debt]
```
