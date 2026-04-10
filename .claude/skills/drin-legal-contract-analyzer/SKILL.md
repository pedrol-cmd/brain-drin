---
name: drin-legal-contract-analyzer
description: High-level review workflow for identifying risky clauses in standard commercial and technical contracts.
status: production
---

# Legal Contract Analyzer

## Purpose
To speed up legal reviews and proactively flag terms that could harm the company.

## Red Flags
- **Uncapped Liability**: Financial ruin risk.
- **IP Ownership**: Are we accidentally giving away our code?
- **Auto-Renewal**: Hidden costs and lock-in.
- **Data Rights**: Who owns the usage data we generate?
- **Force Majeure**: Are we protected against extreme events?

## Rules
- This is NOT legal advice.
- Always use for *initial screening* before sending to a lawyer.
- Flag any "Non-standard" clauses immediately.
---
subagents:
  - legal-compliance
  - researcher
