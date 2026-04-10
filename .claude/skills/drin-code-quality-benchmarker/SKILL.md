---
name: drin-code-quality-benchmarker
description: Comparative analysis workflow for measuring code quality across different modules or teams.
status: production
---

# Code Quality Benchmarker

## Purpose
To provide objective data for technical leadership to decide where to focus improvement efforts.

## Benchmarks
- **Test Coverage %**.
- **Documentation Coverage %**.
- **Linting Error Density**.
- **Complexity Scores**.
- **Issue Resolution Time**.

## Rules
- Use benchmarks for improvement, not punishment.
- Compare similar domains (e.g., Frontend vs. Frontend).
---
subagents:
  - code-reviewer
  - cto-advisor
