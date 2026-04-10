---
name: drin-dependency-graph-visualizer
description: Tools and patterns for mapping and visualizing complex dependency relationships between modules/services.
status: production
---

# Dependency Graph Visualizer

## Purpose
To identify hidden coupling, circular dependencies, and high-risk centralized nodes in the system.

## Visualizations
- `graph TD` (Mermaid): For high-level service dependencies.
- `stateDiagram`: For logical flows between components.
- Automated code-to-graph tools (e.g., `dependency-cruiser`).

## Rules
- Circular dependencies are bugs.
- Identify "God objects" that everyone depends on.
- Use visualization to guide refactoring and decoupling efforts.
