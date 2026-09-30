---
name: spec-driven
description: Turn requirements into a short executable spec before coding. Use for features with acceptance criteria, multi-step product work, or ambiguous requests.
---

# Spec Driven

## Process

1. Extract must-haves vs nice-to-haves.
2. Define acceptance checks that can pass/fail.
3. List out-of-scope items.
4. Identify data model / API / UI surfaces touched.
5. Get confirmation when requirements conflict or are incomplete.
6. Implement against the acceptance checks.
7. Verify each check.

## Spec Format

```
Problem: ...
Users / trigger: ...
Must:
- ...
Must not:
- ...
Acceptance:
- [ ] ...
Out of scope:
- ...
```

## Rules

- Do not invent product requirements silently.
- Prefer measurable acceptance over vague quality words.
- Keep the spec short enough to re-read in one glance.
