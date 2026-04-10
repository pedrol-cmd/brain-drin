---
name: drin-code-complexity-auditor
description: Workflow for measuring and reducing cyclomatic complexity and technical risk in codebases.
status: production
---

# Code Complexity Auditor

## Purpose
To ensure the codebase remains maintainable and easy to understand as it grows.

## Metrics
- **Cyclomatic Complexity**: Number of linear paths through code.
- **Cognitive Complexity**: How hard it is for a human to read.
- **Lines of Code (LoC) per Function**: Keeping it modular.
- **Depth of Nesting**: Reducing "Pyramid" code.

## Rules
- Break down any function with complexity > 10.
- Prefer explicit logic over "Clever" one-liners.
---
subagents:
  - code-reviewer
  - code-architect
