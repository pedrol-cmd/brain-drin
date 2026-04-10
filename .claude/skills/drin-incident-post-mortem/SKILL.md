---
name: drin-incident-post-mortem
description: Methodological framework for analyzing production failures and preventing recurrences.
status: production
---

# Incident Post-Mortem

## Purpose
To turn production failures into high-value institutional knowledge and system reliability.

## The Process
1. **Timeline**: Exact sequence of events leading to the failure.
2. **Detection**: How was it found? (Alert vs. User report).
3. **Impact**: How many users? What loss?
4. **Root Cause**: The Five Whys (Blameless analysis).
5. **Action Items**: Specific, assigned tasks to prevent this specific failure again.

## Rules
- Blameless Culture: Focus on system failure, not human error.
- Be honest about gaps in monitoring or alerts.
---
subagents:
  - sre-engineer
  - technical-writer
