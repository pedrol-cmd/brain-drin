---
description: "Onboard to a codebase — map architecture, conventions, patterns, and key files"
argument-hint: "[directory-path]"
---

# Codebase Onboarding

## Context

- Target: $ARGUMENTS (default: current directory)
- Git history: !`git log --oneline -20`

## Your Task

### Phase 1: Recon
- Project type (language, framework, monorepo?)
- Directory structure overview
- Entry points (main, index, app)
- Configuration files (env, CI, deploy)

### Phase 2: Architecture
- High-level component map
- Data flow: where does data enter, how does it transform, where does it persist?
- External dependencies (APIs, databases, services)
- Key abstractions and patterns used

### Phase 3: Conventions
- Code style (naming, file organization)
- Testing approach (framework, patterns, coverage)
- Error handling strategy
- How configuration is managed

### Phase 4: Key Files
- The 5-10 most important files to read first
- Why each one matters
- What to watch for when making changes

## Output

Concise architectural overview that someone new could read in 5 minutes and start contributing. Focus on what's non-obvious — skip what the README already says.
