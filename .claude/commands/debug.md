---
description: "Systematic bug investigation — reproduce, hypothesize, pinpoint, fix"
argument-hint: "<error-message or description of the bug>"
---

# Debug Investigation

## Context

- Bug report: $ARGUMENTS
- Recent changes: !`git log --oneline -10`
- Current status: !`git status`

## Your Task

Follow the diagnostic protocol:

1. **Capture** — Find the error. Read stack traces, logs, test output.
2. **Reproduce** — Identify the minimum trigger. If you can't reproduce, say so.
3. **Hypothesize** — 2-3 testable theories, ranked by likelihood.
4. **Pinpoint** — Test each theory. Use grep, read code, add diagnostic logging.
5. **Fix** — Minimal change that fixes root cause. Explain why.
6. **Verify** — Run tests. Check for regressions.

## Output

```
## Root Cause
[One sentence]

## Evidence
[What proves it]

## Fix
[Code change]

## Verification
[Tests run, edge cases checked]
```

Fix the root cause, not the symptom. Smallest possible change.
