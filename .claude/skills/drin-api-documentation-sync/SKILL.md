---
name: drin-api-documentation-sync
description: Workflow for ensuring the documentation (OpenAPI/Swagger) always reflects reality.
status: production
---

# API Documentation Sync

## Purpose
To prevent "Documentation Drift" and ensure developers always have accurate integration guides.

## Actions
1. **Discover**: Find all endpoints in the code.
2. **Validate**: Compare current code signatures with the existing `.yaml/.json` spec.
3. **Auto-gen**: Use code-first generators (if available) to update the spec.
4. **Lint**: Check the spec for consistency and descriptive examples.
5. **Publish**: Update the central documentation portal (Swagger UI/Redoc).

## Rules
- Every endpoint must have at least one valid example request/response.
- Every error code must be documented.
