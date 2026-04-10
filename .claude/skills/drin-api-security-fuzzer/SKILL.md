---
name: drin-api-security-fuzzer
description: Automated fuzzing workflow for testing API endpoints against unexpected or malicious inputs.
status: production
---

# API Security Fuzzer

## Purpose
To identify input-validation vulnerabilities and crash-conditions before attackers do.

## Attack Patterns
- **Large Payloads**: Testing memory limits.
- **Invalid Types**: Sending strings where ints are expected, etc.
- **SQLi / XSS Strings**: Standard injection payloads.
- **Auth Token Corruption**: Modifying JWTs or session IDs.

## Rules
- Run fuzzers in a staging environment with mock data.
- Any crash found must be treated as a "Critical" bug.
---
subagents:
  - security-auditor
  - debugger
