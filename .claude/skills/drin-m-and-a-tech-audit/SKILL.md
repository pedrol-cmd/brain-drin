---
name: drin-m-and-a-tech-audit
description: Specialized workflow for technical due diligence during mergers and acquisitions.
status: production
---

# M&A Tech Audit

## Purpose
To identify risks, technical debt, and integration costs before a business acquisition or merger.

## Audit Domains
- **Code Quality**: Complexity, test coverage, and documentation state.
- **Security Posture**: Past breaches, vulnerability scan results, and compliance.
- **Infrastructure**: Scalability, cloud spend, and deployment automation.
- **Key Person Dependency**: Is the knowledge trapped in 1-2 heads?
- **Licensing**: Is there a contamination of restrictive open-source licenses?

## Rules
- Every finding must carry a "Remediation Cost" estimate.
- Prioritize "Business Continuity" risks.
---
subagents:
  - cto-advisor
  - security-auditor
