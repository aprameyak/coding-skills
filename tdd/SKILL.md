---
name: tdd
description: Enforce red-green-refactor test-driven development. Use when implementing logic, fixing bugs, changing behavior, or when the user asks for TDD.
---

# TDD

## Cycle

1. **Red**: write one failing test that specifies desired behavior.
2. Run it; confirm it fails for the right reason.
3. **Green**: write the minimal code to pass.
4. Run the test; confirm green.
5. **Refactor**: clean structure without changing behavior; keep tests green.
6. Repeat for the next behavior slice.

## Rules

- No production code before a failing test for that behavior.
- One behavioral assertion focus per step; avoid mega-tests.
- Prefer tests of observable behavior over private internals.
- Keep the pyramid in mind: many unit, fewer integration, few e2e.
- Prefer DAMP clarity over clever DRY in tests.
- After a bug: write a failing reproduction test first, then fix.

## Exit

- [ ] New/changed tests fail without the implementation change
- [ ] Relevant suite passes
- [ ] No skipped tests introduced to force green
