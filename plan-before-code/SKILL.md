---
name: plan-before-code
description: Plan implementation before writing code. Use when starting non-trivial tasks, features, refactors, or when the approach is unclear.
---

# Plan Before Code

## When

Apply for work that touches more than one file, changes behavior, or has multiple valid approaches. Skip for single-line fixes and renames.

## Steps

1. Restate the goal in one sentence.
2. List constraints (APIs, styles, compatibility, deadlines).
3. Identify files and modules likely involved.
4. Choose one approach. Note rejected alternatives in one line each.
5. Write a short step list (3–8 steps). Mark risks and unknowns.
6. Confirm the plan with the user if ambiguity remains or blast radius is high.
7. Execute only after the plan is clear.

## Output Format

```
Goal: ...
Constraints: ...
Approach: ...
Steps:
1. ...
2. ...
Risks: ...
```

## Rules

- Do not start coding while major unknowns remain.
- Prefer the smallest plan that reaches a verifiable outcome.
- Update the plan if discovery invalidates it; do not silently diverge.
