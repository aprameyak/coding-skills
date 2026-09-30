---
name: brainstorm
description: Clarify requirements with one question at a time before coding. Use when the ask is vague, when the user says grill me or interview me, or before non-trivial design work.
---

# Brainstorm

## Goal

Reach shared understanding before implementation. Do not write production code until confidence is high.

## Process

1. Restate the problem in one sentence; ask the user to correct it if wrong.
2. Ask **one** question at a time. Prefer questions that unlock the next decision.
3. If the codebase can answer a question, read it instead of asking.
4. Offer a recommended answer when helpful; let the user override.
5. Capture decisions as they land (constraints, non-goals, success checks).
6. Stop when remaining unknowns are cheap to resolve during build.
7. Output a short agreed summary before coding.

## Output

```
Problem: ...
Decisions:
- ...
Non-goals:
- ...
Success checks:
- [ ] ...
Open risks:
- ...
```

## Rules

- Do not batch five questions in one message.
- Do not invent product requirements silently.
- Prefer concrete options over open-ended prompts.
