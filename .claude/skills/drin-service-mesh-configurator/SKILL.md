---
name: drin-service-mesh-configurator
description: Workflow for configuring and optimizing service meshes (Istio/Linkerd) for microservice environments.
status: production
---

# Service Mesh Configurator

## Purpose
To provide deep observability, security, and traffic control across a complex microservice ecosystem.

## Domains
- **Traffic Management**: Canary rollouts, circuit breakers, and retries.
- **Security**: mTLS between services, policy enforcement.
- **Observability**: Distributed tracing (Jaeger/Zipkin) and metrics.

## Rules
- Start with a minimal "Observability-only" mode before adding traffic control.
- Document every inter-service dependency policy.
---
subagents:
  - kubernetes-pro
  - cloud-architect
