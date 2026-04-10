---
name: drin-user-feedback-synthesizer
description: Workflow for aggregating and summarizing user feedback from support tickets, social media, and interviews.
status: production
---

# User Feedback Synthesizer

## Purpose
To provide the product team with clear, prioritized insights from the voice of the user.

## Sources
- **Support**: Common pain points and bugs.
- **Social**: Sentiment analysis and feature requests.
- **Interviews**: Deep qualitative goals and friction.
- **NPS / Surveys**: Quantitative joy and frustration metrics.

## Output
A `USER-VOICE-REPORT.md` with "Top 3 Problems" and "Top 3 Desires."
---
subagents:
  - user-researcher
  - business-analyst
