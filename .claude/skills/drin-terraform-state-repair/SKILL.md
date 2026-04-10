---
name: drin-terraform-state-repair
description: Expert workflow for resolving Terraform state drifts, locks, and corruption.
status: production
---

# Terraform State Repair

## Purpose
To safely recover infrastructure management when the state file becomes inconsistent or locked.

## Actions
1. **Unlocking**: Forcefully release stuck state locks (`force-unlock`).
2. **Refresh**: `terraform refresh` to bring state in sync with real-world infrastructure.
3. **Import**: Map existing resources not in state to the code (`terraform import`).
4. **State Edit**: Manually (but safely) removing/renaming items in state (`terraform state rm/mv`).

## Rules
- Always backup the state file before any manual modification.
- Document every manual `import` or `rm` action.
- Verify the `plan` after repair shows zero changes.
