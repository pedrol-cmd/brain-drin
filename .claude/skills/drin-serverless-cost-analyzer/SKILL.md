---
name: drin-serverless-cost-analyzer
description: Cost-focused workflow for optimizing AWS Lambda, GCP Cloud Run, and Azure Functions.
status: production
---

# Serverless Cost Analyzer

## Purpose
To prevent "Serverless bill shock" by optimizing resource allocation and invocation patterns.

## Audit Checkpoints
- **Memory Allocation**: Finding the "Sweet spot" between speed and cost.
- **Cold Starts**: Optimizing provisioned concurrency vs. init time.
- **Idle Resources**: Identifying unused functions or over-provisioned memory.
- **Timeout Management**: preventing runaway function executions.

## Rules
- Cost is a first-class metric in serverless design.
- Use logs to track execution patterns, not just successes.
---
subagents:
  - cloud-architect
  - performance-analyst
