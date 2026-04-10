---
name: drin-performance-profiling-node
description: Specialized workflow for identifying memory leaks and CPU bottlenecks in Node.js applications.
status: production
---

# Performance Profiling (Node.js)

## Purpose
To ensure the application remains fast and resource-efficient under load.

## Techniques
1. **Heap Snapshot**: Analyzing memory distribution to find leaks.
2. **CPU Profile**: Identifying which functions are blocking the event loop.
3. **Flame Graphs**: Visualizing the execution stack to find "Hot" paths.
4. **GC Logs**: Analyzing Garbage Collection frequency and duration.

## Rules
- Always profile under realistic load (use `@load-test` skill).
- Identify "One-off" spikes vs. "Linear" growth trends.
