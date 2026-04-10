---
name: drin-multi-cloud-deployment-sync
description: Workflow for coordinating and syncing deployments across multiple cloud providers (AWS/GCP/Azure).
status: production
---

# Multi-Cloud Deployment Sync

## Purpose
To ensure consistency and high availability by managing infrastructure across cloud boundaries.

## Actions
1. **State Sync**: Ensuring Terraform states for different providers are aligned.
2. **Secret Replication**: Syncing environment secrets across vaults (KMS vs. Secret Manager).
3. **Connectivity Audit**: Verifying VPC Peering or Interconnect health.
4. **Global Traffic Management**: Updating DNS (Route53/Cloud DNS) for cross-cloud failover.

## Rules
- Avoid provider-proprietary services where a cross-cloud alternative exists.
- Everything must be documented in a central infrastructure map.
---
subagents:
  - cloud-architect
  - terraform-pro
