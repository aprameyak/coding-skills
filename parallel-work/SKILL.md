---
name: parallel-work
description: Parallelize independent tool calls and subtasks. Use when gathering context, running checks, or splitting work that has no dependencies.
---

# Parallel Work

## Rules

- Batch independent reads/searches/status checks in one step.
- Serialize only when output of A is required for B.
- Split large tasks into isolated units with clear boundaries.
- Merge results before editing shared files to avoid conflicts.
- Prefer one writer per file region at a time.

## Good Parallel Batches

- `git status` + `git diff` + `git log`
- Multiple symbol searches in different areas
- Lint + typecheck + unit tests when isolated

## Avoid

- Parallel edits to the same file
- Spawning duplicate exploration that repeats the same search
- Over-splitting tiny tasks that cost more coordination than they save
