---
name: write-tests
description: Add focused automated tests for changed behavior. Use when implementing features, fixing bugs, or when the user asks for tests.
---

# Write Tests

## Process

1. Identify the behavior under test and its boundary.
2. Match the repo’s existing test framework, layout, and naming.
3. Write the smallest tests that would fail before the fix/feature.
4. Cover happy path, one meaningful edge case, and one failure path when relevant.
5. Run the new/related tests; fix failures.

## Prefer

- Testing observable behavior over private internals
- Deterministic fixtures; no network/clock unless mocked
- Clear arrange/act/assert structure
- Table-driven cases when checking many inputs

## Avoid

- Duplicating identical coverage
- Brittle snapshot sprawl for trivial markup
- Testing framework behavior or third-party libraries
- Sleep-based synchronization

## Checklist

- [ ] Test names describe behavior
- [ ] Failures are readable
- [ ] No flakiness sources introduced
- [ ] Related suite passes
