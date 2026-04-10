---
description: "Review a PR or diff with multi-dimensional analysis (security, performance, correctness)"
argument-hint: "<PR-number or file-path or git-range>"
---

# PR Review

## Context

- Target: $ARGUMENTS
- If PR number: !`gh pr diff $ARGUMENTS 2>/dev/null || echo "gh not available — use git diff range instead"`
- If file/directory: read the files directly
- If git range: !`git diff $ARGUMENTS --stat`

## Your Task

Review the target across these dimensions:

### 1. Security
- Input validation, injection vectors, auth/authz gaps
- Secrets in code, dependency vulnerabilities

### 2. Performance
- N+1 queries, unbounded operations, missing indexes
- Memory leaks, unnecessary computation

### 3. Correctness
- Edge cases (null, empty, boundary, concurrent)
- Error handling, type safety, race conditions

### 4. Silent Failures
- Empty catch blocks, swallowed errors, misleading fallbacks
- Fire-and-forget async, lost stack traces

## Output Format

Group findings by severity (Critical → High → Medium → Low).
Each finding: `**[SEVERITY]** file:line — description + fix`.
End with: summary counts + APPROVE/REQUEST CHANGES recommendation.

Skip dimensions that aren't relevant to the changes. Don't invent problems.
