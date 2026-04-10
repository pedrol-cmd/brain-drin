---
description: Analyzes and validates Terraform plans for security and cost risks.
---

# /tf-plan

Sanity check for your infrastructure changes.

## Usage
1. Provide a `terraform plan` output.
2. The agent audits for:
   - Destructive changes.
   - Resource over-provisioning.
   - Security misconfigurations.

## Specialist Agent
@terraform-pro
