---
name: drin-prompt-injection-shield
description: Defense strategies and testing workflows to prevent prompt injection attacks in AI applications.
status: production
---

# Prompt Injection Shield

## Purpose
To ensure that users cannot bypass AI constraints or exfiltrate system instructions through creative inputs.

## Defense Layers
1. **Input Sanitization**: Blocking common injection keywords.
2. **Structural Isolation**: Using specific delimiters and system-message precedence.
3. **Guardrails**: Secondary AI check of the final output for safety violation.
4. **Adversarial Testing**: Proactively trying to break the prompt during development.

## Rules
- Never trust user input, even inside a prompt.
- Log and alert on suspected injection attempts.
---
subagents:
  - prompt-engineer
  - security-auditor
