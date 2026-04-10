---
name: drin-cloud-migration-planner
description: Strategic roadmap and technical checklist for migrating on-premise workloads to the cloud.
status: production
---

# Cloud Migration Planner

## Purpose
To ensure a safe, cost-effective, and efficient transition from legacy infrastructure to modern cloud services.

## The 6 R's
1. **Rehost**: Lift and shift.
2. **Replatform**: Adjust for cloud (e.g., use managed DB).
3. **Refactor**: Rewrite for cloud-native features.
4. **Retire**: Stop using it.
5. **Retain**: Keep as-is on-prem.
6. **Repurchase**: Switch to SaaS.

## Rules
- Start with low-critically, low-dependency apps.
- Measure performance and cost BEFORE and AFTER migration.
---
subagents:
  - cloud-architect
  - sre-engineer
