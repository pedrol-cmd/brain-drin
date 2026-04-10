---
name: drin-performance-budgeting
description: System for defining and enforcing performance budgets for every module and user journey.
status: production
---

# Performance Budgeting

## Purpose
To ensure the application remains fast by making performance a non-negotiable requirement.

## Budgets
- **Bundle Size**: Max 200KB initial JS (compressed).
- **LCP (Largest Contentful Paint)**: < 2.5s.
- **TTFB (Time to First Byte)**: < 200ms.
- **FID (First Input Delay)**: < 100ms.

## Enforcement
- CI/CD hooks that fail builds if budgets are exceeded.
- Weekly automated profiling of critical journeys.

## Rules
- Performance is a debt; if you spend, you must repay.
- User experience over developer convenience.
