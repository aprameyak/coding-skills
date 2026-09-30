---
name: context-efficient
description: Minimize token use while remaining correct. Use when working in large repos, long sessions, or when context pressure is high.
---

# Context Efficient

## Principles

- Read the smallest useful slice of a file (offset/limit) before whole files.
- Prefer search hits with context over dumping directories.
- Summarize large tool outputs; keep only facts needed for the next step.
- Reuse prior findings; do not re-read files already understood.
- One clear goal per tool batch; parallelize independent lookups.

## Avoid

- Reading generated, lock, or minified files unless required.
- Pasting large logs into replies.
- Restating the full task in every step.
- Loading multiple skills that overlap; pick one primary workflow.

## When Stuck

1. State the unknown in one line.
2. Run the narrowest query that resolves it.
3. Continue; do not broad-scan “just in case.”
