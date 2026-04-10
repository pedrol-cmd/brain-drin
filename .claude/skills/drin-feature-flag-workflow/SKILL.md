---
name: drin-feature-flag-workflow
description: System for managing feature toggles to enable gradual rollouts and safe experimentation.
status: production
---

# Feature Flag Workflow

## Purpose
To decouple deployment from release, allowing for safer launches and real-world testing.

## Patterns
- **Release Toggles**: Gradual rollout to % of users.
- **Experiment Toggles**: A/B testing variations.
- **Ops Toggles**: Kill-switches for heavy or buggy features.
- **Permission Toggles**: Enabling features for specific tiers or beta users.

## Lifecycle
1. **Create**: Define flag in code and manager (LaunchDarkly/GrowthBook).
2. **Implement**: Wrapped code blocks with flag checks.
3. **Rollout**: Increase % monitoring telemetry.
4. **Cleanup**: Relentlessly remove flags once feature is permanent.

## Rules
- Name flags by intent, not implementation.
- Don't leave flags in the code for > 3 months (Tech Debt).
