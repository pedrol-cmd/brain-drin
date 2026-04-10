---
name: drin-legal-risk-assessment
description: Checklist for evaluating legal risks in software engineering and business operations.
status: production
---

# Legal Risk Assessment

## Purpose
To protect the company from common legal pitfalls related to data, licensing, and liability.

## Checkpoints
- **License Compliance**: Are we using GPA/AGPL in a way that forces open-sourcing?
- **Data Liabilities**: Are we collecting PII we don't need?
- **Contractual Safety**: Do our ToS limit liability for AI-generated outputs?
- **Patent Infringement**: Are we visibly copying a patented methodology?

## Rules
- If unsure, flag for legal counsel.
- Document every "Exception" or "Justification" for high-risk tools.
---
subagents:
  - legal-compliance
  - researcher
