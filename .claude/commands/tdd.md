---
description: "TDD cycle — Red (write failing test) → Green (make it pass) → Refactor (clean up)"
argument-hint: "<feature or behavior to implement>"
---

# TDD Cycle

## Context

- Feature: $ARGUMENTS
- Test framework: detect from project config

## Your Task

### Red Phase
1. Write a failing test that describes the desired behavior
2. Run it — confirm it fails for the right reason
3. Show the test to the user

### Green Phase
1. Write the minimum code to make the test pass
2. Run it — confirm it passes
3. Don't optimize or clean up yet

### Refactor Phase
1. Clean up the implementation (no behavior change)
2. Clean up the test if needed
3. Run tests — confirm still passing

### Repeat
- Ask: "What's the next behavior to add?"
- Or suggest the next logical test case

## Rules

- One test at a time. Don't write all tests upfront.
- Green phase: minimum code only. Fight the urge to over-engineer.
- Refactor phase: tests must stay green throughout.
- Each cycle should take 2-5 minutes.
