---
name: drin-data-lineage-tracker
description: Tracking system for the origin, transformation, and destination of data within complex pipelines.
status: production
---

# Data Lineage Tracker

## Purpose
To ensure data transparency, audits, and reliability by mapping every step of a data's life-cycle.

## Components
1. **Source**: Where did this data come from (e.g., Scraper, User Form, 3rd party API)?
2. **Transformation**: What code/model modified it? (Reference to specific script/version).
3. **Storage**: Where is it living now (e.g., Postgres, S3, Vector DB)?
4. **Consumer**: Who/what is using this data?

## Rules
- Every data point must have a `source_id` and `timestamp`.
- Changes to transformation logic must trigger a lineage audit.
- Document the "Trust Level" for each data source.
---
subagents:
  - data-engineer
  - legal-compliance
