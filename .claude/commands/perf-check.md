---
description: "Performance analysis — find N+1 queries, memory leaks, slow paths, and optimization opportunities"
argument-hint: "<file-path or directory or 'full'>"
---

# Performance Check

## Context

- Target: $ARGUMENTS

## Your Task

Analyze for:

### Database
- N+1 query patterns
- Missing indexes on WHERE/ORDER BY columns
- SELECT * on large tables
- Missing pagination on list endpoints
- Unbounded queries

### Memory & Resources
- Event listeners not cleaned up
- Streams not closed
- Large datasets loaded entirely into memory
- Connection pool exhaustion

### Computation
- Redundant computation in loops
- Missing memoization for expensive operations
- Blocking operations on main thread
- Unnecessary re-renders (React) or recomputations

### Network
- Missing caching headers
- Overfetching (loading more data than needed)
- Missing compression
- Sequential requests that could be parallel

## Output

For each finding:
```
**[Impact: HIGH|MEDIUM|LOW]** file:line — Title
What: the problem
Impact: estimated effect (latency, memory, cost)
Fix: specific optimization
```

End with prioritized optimization plan. Biggest impact first.
