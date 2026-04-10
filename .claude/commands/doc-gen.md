---
description: "Generate documentation — API docs, README, architecture docs, or inline docs"
argument-hint: "<file-path or 'api' or 'readme' or 'architecture'>"
---

# Documentation Generator

## Context

- Target: $ARGUMENTS
- Project: !`ls README* 2>/dev/null; ls docs/ 2>/dev/null`

## Your Task

### If target is a file:
- Generate JSDoc/docstring for exported functions
- Focus on: what it does, parameters, return value, throws, examples
- Don't document the obvious (getters, simple constructors)

### If target is 'api':
- List all API endpoints from routes/controllers
- For each: method, path, description, request/response format, auth required
- Output as markdown table or OpenAPI snippet

### If target is 'readme':
- What the project does (1-3 sentences)
- Setup instructions (minimum steps)
- Usage examples
- Project structure (if non-obvious)

### If target is 'architecture':
- High-level component diagram (mermaid)
- Data flow
- Key design decisions
- External dependencies

## Rules

- Documentation should be useful 6 months from now to someone new
- Don't document implementation details that will change
- Keep it current — link to code, not copy code
