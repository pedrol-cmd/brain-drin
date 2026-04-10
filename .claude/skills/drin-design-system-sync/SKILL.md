---
name: drin-design-system-sync
description: Workflow for ensuring technical components are in sync with design tokens (colors, fonts, spacing).
status: production
---

# Design System Sync

## Purpose
To ensure UI consistency and bridge the gap between Figma and the final product code.

## Components
1. **Design Tokens**: Pulling latest JSON values from Figma/Penpot.
2. **Component Audit**: Comparing UI components against the designated design system versions.
3. **Visual Regression**: Identifying unexpected visual shifts.

## Rules
- No hardcoded colors or spacing; use tokens.
- Every new UI component must be registered in the Design System.
---
subagents:
  - ux-designer
  - frontend-dev
