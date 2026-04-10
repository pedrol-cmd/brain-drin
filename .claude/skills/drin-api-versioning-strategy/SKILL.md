---
name: drin-api-versioning-strategy
description: Framework for managing API evolution without breaking legacy client integrations.
status: production
---

# API Versioning Strategy

## Purpose
To balance rapid API innovation with the stability and trust required by external integrators.

## Approaches
- **URI Versioning**: `/v1/users`, `/v2/users`. (Explicit, easy to cache).
- **Header Versioning**: `Accept: application/vnd.drin.v1+json`. (Cleaner URLs, harder to test).
- **Parameter Versioning**: `?version=2`.

## Deprecation Path
1. **Announce**: Flag in docs and headers.
2. **Sunset**: Set an end-of-life date (min 6-12 months).
3. **Decommission**: Final removal of the endpoint.

## Rules
- Never make breaking changes without a version bump.
- Maintain a clear "Migration Guide" for every version change.
