---
name: drin-monolith-to-microservice
description: Architectural workflow for decomposing legacy monoliths into scalable microservices.
status: production
---

# Monolith to Microservice

## Purpose
To enable scalable growth and independent deployment by safely breaking down complex legacy systems.

## Methodology (The Strangler Pattern)
1. **Identify Boundaries**: Find bounded contexts using Domain Driven Design (DDD).
2. **Extract Logic**: Move a single capability to a new service.
3. **Proxy Traffic**: Redirect traffic to the new service via Ingress/API Gateway.
4. **Decommission**: Remove the old code once the new service is stable.

## Rules
- Don't build "Distributed Monoliths" (tight coupling).
- Database extraction must happen after service logic extraction.
- Every microservice must have its own CI/CD and monitoring.
---
subagents:
  - code-architect
  - backend-dev
