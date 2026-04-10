---
description: "Save session context for continuation in a new conversation — decisions, progress, next steps"
---

# Session Handoff

## Your Task

Create a handoff document that lets a new Claude session continue exactly where this one left off.

1. **Read** the full conversation context
2. **Generate** a handoff document:

```markdown
# Session Handoff — [date]

## What We Were Doing
[1-2 sentences: the task and current state]

## Decisions Made
[Bullet list of decisions and their rationale]

## Changes Made
[Files modified/created, with one-line description each]

## Current State
[What's working, what's broken, what's in progress]

## Next Steps
[Ordered list of what to do next, with enough context to act]

## Key Context
[Anything a new session needs to know that isn't obvious from the code]
```

3. **Save** to `.drin/memory-compiler/handoffs/[date]-[topic].md`

## Rules

- Include enough context to resume without reading the entire conversation
- Reference specific files and line numbers
- Don't include conversation noise — only decisions and state
