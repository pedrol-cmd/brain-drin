---
name: drin-ml-model-monitoring
description: Workflow for tracking performance, drift, and health of ML models in production.
status: production
---

# ML Model Monitoring

## Purpose
To ensure that production models continue to provide accurate and unbiased predictions over time.

## Key Metrics
- **Performance Drift**: Is the accuracy/F1-score dropping?
- **Data Drift**: Has the statistical distribution of input data changed?
- **Latency**: How fast are the predictions?
- **Error Types**: Are there specific classes where the model is failing consistently?

## Actions
1. **Alert**: Notify when a metric falls below the threshold.
2. **Inspect**: Run a manual evaluation on the failing data subset.
3. **Retrain**: Trigger a new training cycle with recent data.
4. **Switch**: Revert to a previous stable model if necessary.
---
subagents:
  - ml-engineer
  - data-scientist
