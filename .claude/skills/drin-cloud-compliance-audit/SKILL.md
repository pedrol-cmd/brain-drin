---
name: drin-cloud-compliance-audit
description: Automated audit workflow for cloud infrastructure compliance (security groups, IAM, logging).
status: production
---

# Cloud Compliance Audit

## Purpose
To ensure that the cloud infrastructure remains secure and compliant with internal/external standards (e.g., SOC2).

## Checkpoints
- **Public Assets**: Are there any S3 buckets or DBs exposed to the public?
- **IAM Hygiene**: Identifying unused or overly permissive credentials.
- **Logging**: Ensuring all critical actions are audited (CloudTrail/Logging).
- **Encryption**: Is "Encryption at rest" enabled for all storage?

## Rules
- Runcompliance audits automatically every week.
- Fix all "Critical" findings within 24 hours.
---
subagents:
  - security-auditor
  - cloud-architect
