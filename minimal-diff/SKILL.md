---
name: minimal-diff
description: Keep changes as small and focused as possible. Use when implementing features, fixing bugs, or refactoring alongside other work.
---

# Minimal Diff

## Goal

Ship the smallest change that correctly solves the stated problem.

## Rules

- Touch only files required for the task.
- Do not reformat unrelated code.
- Do not rename or move files unless required.
- Do not add abstractions for one-time use.
- Do not expand scope into cleanup, drive-bys, or “while I’m here.”
- Match existing style, naming, and structure exactly.
- Prefer editing existing functions over adding parallel ones.
- Delete dead code only when it blocks or is caused by this change.

## Checklist

- [ ] Diff matches the request and nothing else
- [ ] No unrelated whitespace or import churn
- [ ] No new dependencies unless necessary
- [ ] Tests cover the changed behavior only
