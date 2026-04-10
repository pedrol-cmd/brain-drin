---
name: drin-deployment-canary-monitor
description: High-fidelity monitoring workflow for validating the health of a canary release before full rollout.
status: production
---

# Deployment Canary Monitor

## Purpose
To minimize the blast radius of buggy releases by identifying issues in a small user subset.

## Monitoring KPIs
- **Error Rate Change**: Is the canary failing more than the stable version?
- **Latency Change**: Is it slower?
- **Business KPI Impact**: Is conversion dropping for this subset?
- **Traffic Health**: Are users bouncing?

## Rules
- Automatically stop the rollout if the Canary error rate > [Threshold].
- Compare Canary metrics against a baseline of the current Stable version.
---
subagents:
  - sre-engineer
  - data-scientist
