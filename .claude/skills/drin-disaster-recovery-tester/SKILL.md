---
name: drin-disaster-recovery-tester
description: Simulation and validation framework for business continuity and disaster recovery plans.
status: production
---

# Disaster Recovery Tester

## Purpose
To ensure that the "Backup Plan" actually works when it matters most.

## Tests
- **Database Restore**: Can we recover from a full wipe?
- **Region Failover**: Can the site run in Region B if Region A goes down?
- **Key Person Loss**: Can the team function if the Lead is offline?
- **RTO/RPO Validation**: Are we meeting our time and data-loss targets?

## Rules
- Test DR at least once a quarter.
- Document every failure found during the test.
---
subagents:
  - sre-engineer
  - devops-engineer
