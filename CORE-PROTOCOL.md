# Core Protocol

How to get the best results from Brain Drin with minimal token usage.

## 1. Always target a specialist

Don't use Claude generically. Direct every request to an agent or command.

- **Bad**: "Analyze this code for me."
- **Good**: `@code-reviewer /review-pr` — activates specific protocols, skips noise.

## 2. Token efficiency hierarchy

From cheapest to most expensive:

1. **Slash command** (`/db-opt`, `/test-gen`) — pre-built workflow, lowest cost
2. **Agent** (`@backend-dev`, `@copywriter`) — specialist persona, moderate cost
3. **Orchestrator** (`@team-lead`) — decomposes and delegates, highest cost but handles complexity

Use the cheapest option that fits the task.

## 3. Input format

Write dense, constrained inputs:

```
@backend-dev Create endpoint /health in server.ts.
Constraint: TypeScript strict, no external libraries.
```

**Constraints > instructions.** "Constraint: No joins" is interpreted with more weight and fewer tokens than "Please be careful not to use any join operations."

## 4. Session persistence

Before ending a long session, run `/session-handoff`. It compresses decisions, progress, and next steps into a context pack you paste into the next conversation. Prevents context loss across sessions.

## 5. Model selection

- **Sonnet** (default): 90% of tasks — coding, writing, ops
- **Opus**: Architecture decisions, adversarial security review, complex strategy

If Sonnet fails twice on the same logic, escalate to `@team-lead` (Opus).
