---
name: debug-systematic
description: Debug failures with a hypothesis-driven loop. Use when fixing bugs, investigating exceptions, flaky tests, or unexpected behavior.
---

# Debug Systematic

## Loop

1. **Observe**: capture exact symptom, error text, stack, and repro steps.
2. **Hypothesize**: list 1–3 plausible causes ranked by likelihood.
3. **Test**: run the smallest check that falsifies a hypothesis.
4. **Isolate**: binary-search the fault (input, commit, module, line).
5. **Fix**: change the root cause; keep the diff minimal.
6. **Verify**: confirm the original repro is gone; add a regression test when valuable.

## Rules

- Do not spray unrelated changes hoping something works.
- Change one variable at a time when experimenting.
- Prefer logging/assertions at boundaries over shotgun prints.
- Record what was tried so the same dead ends are not repeated.

## Output

```
Symptom: ...
Repro: ...
Root cause: ...
Fix: ...
Verification: ...
```
