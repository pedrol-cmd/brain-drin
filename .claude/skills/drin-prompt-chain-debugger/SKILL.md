---
name: drin-prompt-chain-debugger
description: Investigative workflow for identifying and fixing failures in complex multi-prompt agent chains.
status: production
---

# Prompt Chain Debugger

## Purpose
To ensure composite AI systems remain reliable and behave according to set specifications.

## Debugging Steps
1. **Trace**: Map the flow from input through every agent/prompt node.
2. **Inspect Output**: Check the raw string output of every node.
3. **Validate Interface**: Did Node A provide what Node B expected?
4. **Sensitivity Test**: Does a small change in input drastically break the chain?

## Rules
- Log the temperature and model used for every step of the chain.
- If a chain is fragile, break it down into more discrete, verifiable steps.
---
subagents:
  - prompt-engineer
  - debugger
