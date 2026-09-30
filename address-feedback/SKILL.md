---
name: address-feedback
description: Resolve PR review and bot feedback efficiently. Use when responding to review comments, Copilot/Bugbot notes, or requested changes.
---

# Address Feedback

## Process

1. Collect all review threads and CI/bot comments.
2. Deduplicate; group by file/theme.
3. Classify each: must-fix, nice-to-have, disagree/needs discussion.
4. Fix must-fix with minimal diffs; run relevant checks.
5. Reply to threads with what changed or why not.
6. Re-request review when blockers are cleared.

## Rules

- Do not ignore actionable correctness/security comments.
- Do not expand scope into unrelated refactors while addressing feedback.
- Prefer one commit or a clear commit series for review responses when repo style allows.
- If feedback conflicts with requirements, ask the user before implementing.

## Output

```
Fixed:
- thread/file — change
Deferred:
- ... — reason
Questions:
- ...
```
