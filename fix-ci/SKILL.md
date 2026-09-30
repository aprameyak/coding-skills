---
name: fix-ci
description: Diagnose and fix failing CI checks. Use when pipelines fail, PR checks are red, or the user asks to fix CI/CD.
---

# Fix CI

## Process

1. Identify the exact failing job and step.
2. Read the failure log from the error upward to the first root cause.
3. Reproduce locally with the same command when possible.
4. Fix the cause, not the symptom (avoid skipping checks).
5. Re-run the failing check; confirm green before stopping.

## Common Causes

- Flaky tests → stabilize assertions/timing; do not blind-retry forever
- Env/secrets missing → document required vars; do not hardcode secrets
- Lockfile drift → regenerate with the project’s package manager
- Version skew → match CI toolchain versions
- Permissions / path issues → fix paths and checkout assumptions

## Output

```
Failing check: ...
Root cause: ...
Fix: ...
Verification: <command> → pass
```

## Rules

- Prefer minimal fixes scoped to the failure.
- Do not disable tests or weaken CI unless the user explicitly asks.
- If flaky and unowned, document flake evidence and a follow-up.
