---
name: drin-release-management-playbook
description: Step-by-step checklist for safe, successful production releases.
status: production
---

# Release Management Playbook

## Purpose
To eliminate deployment anxiety through predictable, automated, and safe release cycles.

## Deployment Strategies
- **Rolling**: One for one replacement.
- **Blue-Green**: Full stack swap.
- **Canary**: Deploy to 5% of users first.

## Checklist
1. **Pre-flight**: Tests passed, build verified, changelog updated.
2. **Deployment**: CI/CD automation execution.
3. **Validation**: Smoke tests, error monitoring (Sentry), performance check.
4. **Rollback**: Emergency path if validation fails.

## Rules
- No Friday deployments unless critical fix.
- Full automation: No manual steps allowed.
---
subagents:
  - devops-engineer
  - sre-engineer
