---
name: drin-adversarial-security-review
description: Specialist security audit workflow focused on bypasses, creative injections, and logical flaws.
status: production
---

# Adversarial Security Review

## Purpose
To find the high-impact vulnerabilities that automated scanners miss by thinking like a determined attacker.

## Attack Vectors
- **Auth Bypass**: JWT manipulation, session fixation, MFA bypasses.
- **Logical Injections**: Race conditions in wallets/credits, manipulating business rules.
- **Escalation**: Stepping from a low-privilege user to a global admin.
- **Exfiltration**: Stealthy data extraction through DNS, headers, or timing side-channels.

## Rules
- Always document the "Full Chain" of the attack.
- Prioritize "Business Risk" over "Technical Novelty."
---
subagents:
  - security-auditor
  - pentester
