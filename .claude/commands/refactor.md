---
description: "Refactor code — simplify, extract, clean up debt without changing behavior"
argument-hint: "<file-path or description of what to refactor>"
---

# Refactor

## Context

- Target: $ARGUMENTS
- Tests exist? !`find . -name "*test*" -o -name "*spec*" | head -10 2>/dev/null`

## Your Task

1. **Read** the target code and understand its behavior
2. **Identify** what to improve:
   - Duplicated code → extract shared function
   - Long function → split into smaller functions
   - Complex conditionals → simplify or extract
   - Wrong abstraction level → restructure
   - Dead code → remove
   - Naming → clarify
3. **Verify** tests exist for the behavior (if not, write them first)
4. **Refactor** — change structure without changing behavior
5. **Run tests** — confirm nothing broke

## Rules

- Tests MUST pass before and after. If no tests exist, write them first.
- One type of refactoring at a time. Don't mix extraction with rename with restructuring.
- If the refactoring is large, break it into commits.
- Don't "improve" code that works and isn't in the way. Only refactor what needs it.
