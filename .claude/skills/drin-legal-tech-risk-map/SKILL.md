---
name: drin-legal-tech-risk-map
description: Mapping tool for identifying legal risks associated with emerging technologies like Generative AI.
status: production
---

# Legal Tech Risk Map

## Purpose
To allow for innovation while protecting the company from emerging legal and ethical liabilities.

## Risk Nodes
- **Hallucination Liability**: Who is responsible if the AI provides wrong advice?
- **IP Contamination**: Are we training on data we don't own?
- **Data Residence**: Is the AI processing data in prohibited jurisdictions?
- **Bias & Fairness**: Does the model discriminate against specific users?

## Rules
- AI output must carry a disclaimer.
- Human-in-the-loop for high-stakes decisions.
---
subagents:
  - legal-compliance
  - prompt-engineer
