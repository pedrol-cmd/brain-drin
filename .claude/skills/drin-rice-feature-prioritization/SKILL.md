---
name: drin-rice-feature-prioritization
description: Data-driven framework for prioritizing product backlogs using the RICE scoring model.
status: production
---

# RICE Feature Prioritization

## Purpose
To ensure the team works on the most impactful features by objectively comparing Reach, Impact, Confidence, and Effort.

## The Formula
`Score = (Reach * Impact * Confidence) / Effort`

1. **Reach**: How many users will this affect in a given period?
2. **Impact**: How much will this contribute to our main goal (1-3 scale)?
3. **Confidence**: How sure are we about the above estimates (%)?
4. **Effort**: How many person-months will this take?

## Workflow
1. **List**: Populate the sheet with all candidate features.
2. **Score**: Assign scores to each RICE component.
3. **Rank**: Sort by final score.
4. **Review**: Sense-check the top 5 with the team.

## Output
A `PRIORITIZED-BACKLOG.md` with ranked features and rationale.
