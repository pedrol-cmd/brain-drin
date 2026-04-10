---
description: "Generate tests for a file, function, or module — unit, integration, or e2e"
argument-hint: "<file-path or function-name> [--type unit|integration|e2e]"
---

# Test Generation

## Context

- Target: $ARGUMENTS
- Test framework: detect from package.json, pytest.ini, or existing test files
- Existing tests: !`find . -name "*test*" -o -name "*spec*" | head -20 2>/dev/null`

## Your Task

1. **Read** the target code thoroughly
2. **Identify** what to test:
   - Happy path (normal operation)
   - Edge cases (null, empty, boundary, max values)
   - Error paths (invalid input, network failures, timeouts)
   - Integration points (DB, APIs, external services)
3. **Generate** complete, runnable test file
4. **Run** the tests and fix any failures

## Test Quality

- One logical assertion per test
- Clear test names: `should [behavior] when [condition]`
- Arrange-Act-Assert structure
- No shared mutable state between tests
- Real implementations over mocks when feasible
- Fast: unit <100ms, integration <5s

## Rules

- Match existing test patterns and conventions in the project
- Don't test framework behavior or trivial code
- Every test must be able to fail (if it can never fail, it's useless)
