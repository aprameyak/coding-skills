---
name: verify-work
description: Verify changes before claiming done. Use after implementations, fixes, refactors, or when the user asks if work is complete.
---

# Verify Work

## Before Claiming Done

1. Re-read the original request; confirm every requirement is met.
2. Run the project’s relevant checks (tests, typecheck, lint, build).
3. Exercise the changed path manually when feasible.
4. Inspect the diff for accidental scope.
5. Confirm no secrets, debug leftovers, or broken imports.

## Evidence

Report what was run and the outcome:

```
Checks:
- <command> → pass|fail (summary)
Behavior checked: ...
Remaining risks: ...
```

## Rules

- Never mark complete on untested critical paths.
- If checks cannot run, say why and what was verified instead.
- Fix failures before expanding scope.
