---
name: drin-dependency-auto-upgrade
description: Automated workflow for auditing, upgrading, and testing project dependencies.
status: production
---

# Dependency Auto-Upgrade

## Purpose
To ensure the project remains secure and uses the latest stable features while minimizing manual maintenance overhead.

## Workflow
1. **Audit**: Run `npm audit`, `pip audit`, or `cargo audit` to find vulnerabilities.
2. **Update**: Identify outdated packages (`npm outdated`).
3. **Batch Upgrade**: Apply updates in small, logical batches (minor/patch first).
4. **Test**: Run full test suite after each batch to identify breaking changes.
5. **PR Generation**: Create a detailed PR with the changelog of updated packages.

## Rules
- Never upgrade major versions automatically without manual review.
- Always check the `lock` file integrity.
- Verify security of the new versions (check if it was recently yanked).
