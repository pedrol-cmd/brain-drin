---
name: drin-tech-debt-inventory
description: Systematic cataloging and prioritization framework for technical debt.
status: production
---

# Tech Debt Inventory

## Purpose
To bring transparency to "Hidden Debt" and ensure it is managed strategically alongside feature work.

## Debt Categories
1. **Architectural**: Rigid structures, poor boundaries.
2. **Code**: Duplication, complexity, lack of tests.
3. **Infrastructure**: Fragile pipelines, manual steps.
4. **Documentation**: Stale guides, undocumented tribal knowledge.

## Prioritization
Use the **Refactor vs. Rebuild** matrix based on Interest rate (friction) and Principal (effort).

## Rules
- Use `@todo` tags in code for immediate identification.
- Review the inventory during every sprint planning.
