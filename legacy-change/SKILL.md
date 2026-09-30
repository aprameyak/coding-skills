---
name: legacy-change
description: Change legacy code safely with characterization coverage. Use when editing poorly tested old modules, unknown systems, or brittle production paths.
---

# Legacy Change

## Process

1. Find the smallest seam around the change.
2. Characterize current behavior with tests or golden fixtures before editing.
3. Prefer adapter/facade over rewriting the core.
4. Make the behavior change in a thin step; keep characterization green.
5. Only then refactor within the covered seam.

## Rules

- Do not big-bang rewrite legacy modules for a small fix.
- Record discovered invariants in tests, not only in chat.
- Avoid drive-by cleanups outside the seam.
- If no test harness exists, add the thinnest possible one at the boundary.

## Exit

- [ ] Before-behavior captured
- [ ] Intended change verified
- [ ] Rollback path understood
