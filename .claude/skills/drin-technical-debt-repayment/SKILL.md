---
name: drin-technical-debt-repayment
description: Practical strategy for "Paying back" technical debt without stopping product development.
status: production
---

# Technical Debt Repayment

## Purpose
To maintain a high velocity by systematically removing the friction and complexity that slows us down.

## Strategies
- **The Boy Scout Rule**: Leave the code cleaner than you found it.
- **Feature Tax**: Allocate 20% of every sprint to debt reduction.
- **Dedicated Sprints**: One "Cleanup" sprint every 4-6 feature sprints.
- **Refactor as you go**: Fix the logic while you are touching it for a new feature.

## Rules
- High-interest debt (major friction) gets paid first.
- Principal debt (high effort) must be planned as an epic.
---
subagents:
  - code-architect
  - project-manager
  - debugger
