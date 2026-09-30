---
name: agent-discipline
description: Prevent over-engineering, silent assumptions, and unrelated edits. Use when coding any task, especially when agents sprawl or invent requirements.
---

# Agent Discipline

## Rules

1. **Do not invent**: if unsure, read code or ask; do not guess product behavior.
2. **Minimal change**: touch only what the task requires; no unrelated cleanup.
3. **No speculative architecture**: no extra layers, configs, or “future-proofing” for hypothetical needs.
4. **Match the repo**: reuse patterns, libraries, and naming already present.
5. **Surfaces assumptions**: state them explicitly when they affect the design.
6. **Verify**: run checks; do not claim done on vibes.

## Anti-Patterns

- Rewriting a working file for style
- Adding dependencies for trivial helpers
- Expanding scope mid-task without user OK
- Silent API/behavior changes

## Self-Check

- [ ] Diff matches the request
- [ ] No drive-by files
- [ ] Assumptions listed if any
