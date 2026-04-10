---
name: drin-api-governance-audit
description: Framework for ensuring consistency, security, and quality across a large portfolio of APIs.
status: production
---

# API Governance Audit

## Purpose
To prevent "API Spaghetti" and ensure all external interfaces follow the same standards.

## Audit Points
- **Naming Consistency**: Are we using `/users` everywhere?
- **Auth Standards**: Is every API using the same OAuth2/OpenID flow?
- **Documentation Quality**: Is every endpoint documented and tested?
- **Versioning Alignment**: Are versions managed consistently?

## Rules
- One standard for the whole company.
- Automatic linting of OpenAPI specs in the CI/CD pipeline.
---
subagents:
  - api-designer
  - technical-writer
