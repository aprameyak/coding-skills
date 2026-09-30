---
name: refactor-safe
description: Refactor code without changing behavior. Use when cleaning structure, renaming, extracting modules, or preparing for a feature.
---

# Refactor Safe

## Rules

- Separate pure refactors from behavior changes; never mix in one commit/PR when avoidable.
- Keep external APIs stable unless the task requires a break.
- Prefer automated renames and compiler/type feedback.
- Preserve existing tests; they are the safety net.
- Take small steps; verify after each step.

## Process

1. Establish baseline tests/typecheck.
2. Make one structural change.
3. Re-run baseline.
4. Repeat until done.
5. Summarize structural changes with no intended behavior delta.

## Avoid

- Rewriting working modules “for clarity” beyond the need
- Introducing new patterns not already used in the repo
- Drive-by dependency upgrades during refactors
