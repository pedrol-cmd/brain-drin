---
name: drin-api-endpoint-scaffold
description: Rapid scaffolding for new API endpoints following project-specific standards.
status: production
---

# API Endpoint Scaffold

## Purpose
To accelerate development while ensuring every endpoint follows security and quality standards.

## Components Generated
1. **Route Definition**: URL path, method, and auth requirements.
2. **Schema/DTO**: Validation for request body and query params (Zod/Pydantic).
3. **Controller/Handler**: The logic entry point.
4. **Service**: Business logic isolation.
5. **Test**: Basic unit test for the new endpoint.

## Rules
- Enforce auth middleware by default.
- Always include standard error handling.
- Documentation must be included in the scaffold.
