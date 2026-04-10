---
name: drin-code-base-recon
description: Systematic process for understanding a new or complex repository from zero to expert.
status: production
---

# Codebase Reconnaissance

## Purpose
To rapidly build a mental model of an unknown system, identifying key structures and risks.

## Phase 1: Landscape
- `ls -R`: File distribution.
- `package.json/requirements.txt`: Tech stack and dependencies.
- `README.md / CLAUDE.md`: Intent and rules.

## Phase 2: Core Paths
- Entry points (Main, Index, Server).
- Data models (Schema, Types).
- Primary business logic flows.

## Phase 3: Infrastructure
- CI/CD pipelines.
- Deployment configs (Docker, Terraform).
- Monitoring and logging patterns.

## Output
A `RECON-REPORT.md` summarizing the architecture, hot spots, and "WTF" areas.
