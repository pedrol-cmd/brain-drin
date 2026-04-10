---
name: drin-saas-metrics-dashboard
description: Comprehensive framework for tracking and analyzing core SaaS business metrics (MRR, Churn, CAC, LTV).
status: production
---

# SaaS Metrics Dashboard

## Purpose
To provide a unified, data-driven view of the health and trajectory of a SaaS business.

## Key Metrics
1. **MRR (Monthly Recurring Revenue)**: New, Expansion, Churn, and Net MRR.
2. **Churn Rate**: Logo churn vs. Revenue churn.
3. **CAC (Customer Acquisition Cost)**: Fully loaded cost to get a new customer.
4. **LTV (Lifetime Value)**: Predicted revenue from a customer over their relationship.
5. **Magic Number**: Efficiency of sales and marketing spend.

## Rules
- Definitions must be consistent (e.g., when exactly is a lead "Churned"?).
- Data must be pulled from the source of truth (e.g., Stripe, ProfitWell).
---
subagents:
  - business-analyst
  - sales-ops
