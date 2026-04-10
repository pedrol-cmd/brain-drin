---
name: drin-vector-database-sync
description: Specialized workflow for managing, syncing, and optimizing data in Vector DBs for RAG systems.
status: production
---

# Vector Database Sync

## Purpose
To ensure the AI has access to the most high-fidelity and relevant project knowledge at all times.

## Workflow
1. **Ingest**: Pull new content from source (GitHub, Docs, Internal Wikis).
2. **Chunk**: Break down content into semantically meaningful pieces.
3. **Embed**: Generate vectors using the latest embedding model.
4. **Index**: Update the vector index (Pinecone/Milvus/Chroma).
5. **Optimize**: Prune old/irrelevant data to keep the context window clean.

## Rules
- Every chunk must carry its source metadata (URL/FilePath).
- Use overlapping chunks to preserve context at boundaries.
- Re-embed if the embedding model version changes.
---
subagents:
  - data-engineer
  - prompt-engineer
