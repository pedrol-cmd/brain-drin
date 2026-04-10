---
name: drin-automated-test-generator
description: Advanced workflow for generating relevant, high-coverage tests based on code behavior and edge-cases.
status: production
---

# Automated Test Generator

## Purpose
To ensure code reliability by automatically creating tests for complex logic and regression risks.

## Approach
1. **Discovery**: Analyze the code to find branches and boundary conditions.
2. **Setup**: Generate the necessary mocks/stubs for dependencies.
3. **Execution**: Write the test code (unit/integration) using AAA pattern.
4. **Validation**: Run the test to ensure it passes on the current code.

## Rules
- Focus on "High Logic" areas, not just getters/setters.
- Tests must be readable and maintainable by humans.
---
subagents:
  - test-engineer
  - code-reviewer
