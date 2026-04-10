---
description: "Security audit — OWASP Top 10, auth flows, secrets, dependencies"
argument-hint: "<file-path or directory or 'full'>"
---

# Security Audit

## Context

- Target: $ARGUMENTS (if 'full', audit the entire project)
- Dependencies: !`cat package-lock.json 2>/dev/null | head -5 || cat requirements.txt 2>/dev/null | head -5 || echo "no lockfile found"`

## Your Task

Audit for:

1. **Injection** — SQL, NoSQL, OS command, LDAP
2. **Broken Auth** — Missing checks, weak session management, JWT issues
3. **Sensitive Data** — PII in logs, unencrypted storage, secrets in code
4. **Broken Access Control** — IDOR, missing role checks, privilege escalation
5. **XSS** — Reflected, stored, DOM-based
6. **Misconfig** — Default creds, verbose errors, unnecessary features
7. **Vulnerable Deps** — Known CVEs in dependencies
8. **Secrets** — API keys, tokens, passwords in code or config

## Output

For each finding:
```
**[CRITICAL|HIGH|MEDIUM|LOW]** file:line — Title
What: description
Impact: what an attacker could do
Fix: specific remediation
```

End with prioritized remediation plan.
Only report real vulnerabilities with exploit paths. No theoretical risks.
