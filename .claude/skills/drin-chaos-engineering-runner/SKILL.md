---
name: drin-chaos-engineering-runner
description: Controlled fault injection workflow to test system resonance and disaster recovery.
status: production
---

# Chaos Engineering Runner

## Purpose
To build confidence in the system's ability to withstand turbulent conditions in production.

## Experiments
1. **Network Latency**: Simulating slow services.
2. **Pod Termination**: Randomly killing containers to test auto-healing.
3. **DB Failover**: Simulating primary database failure.
4. **Resource Hunger**: Artificially spiking CPU/Memory usage.

## Rules
- Never run chaos experiments without a clear "Steady State" metric.
- Always have a "Big Red Button" to stop and rollback immediately.
- Run experiments during low-traffic periods first.
---
subagents:
  - sre-engineer
  - devops-engineer
