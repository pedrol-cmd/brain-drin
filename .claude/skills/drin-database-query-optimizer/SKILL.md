---
name: drin-database-query-optimizer
description: Specialized workflow for identifying and fixing slow SQL queries.
status: production
---

# Database Query Optimizer

## Purpose
To ensure database performance remains high as the data grows.

## Steps
1. **Identify**: Find slow queries via logs or `@monitoring`.
2. **Explain**: Use `EXPLAIN ANALYZE` to see the query plan.
3. **Diagnosis**: Check for Sequential Scans, missing indexes, or N+1 patterns.
4. **Optimization**:
   - Add/adjust indexes (covering, GIN, BRIN).
   - Rewrite query to avoid expensive joins/subqueries.
   - Denormalize data if strictly necessary for read performance.
5. **Verify**: Re-run `EXPLAIN ANALYZE` and compare timings.

## Rules
- Never add an index without verifying it will be used.
- Monitor the write-performance cost of new indexes.
