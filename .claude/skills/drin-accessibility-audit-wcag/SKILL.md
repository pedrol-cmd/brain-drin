---
name: drin-accessibility-audit-wcag
description: Technical workflow for verifying compliance with WCAG 2.2 accessibility standards.
status: production
---

# Accessibility Audit (WCAG)

## Purpose
To ensure that everyone, including people with disabilities, can use the product effectively.

## Checkpoints
- **Color Contrast**: 4.5:1 ratio for text.
- **Keyboard Nav**: Can users use the site without a mouse?
- **Screen Readers**: Correct ARIA labels and alt-text for images.
- **Focus Indicators**: Are they visible and clear?
- **Multimedia**: Captions and transcripts available.

## Rules
- Accessibility is a feature, not an afterthought.
- If a component isn't accessible, it's not "Done."
---
subagents:
  - accessibility-tester
  - frontend-dev
