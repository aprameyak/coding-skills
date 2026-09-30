---
name: simplify-code
description: Reduce complexity while preserving behavior. Use when code works but is hard to read, when cleaning a diff, or when the user asks to simplify.
---

# Simplify Code

## Rules

- Preserve exact behavior; simplify is not a rewrite.
- Prefer deleting code to adding abstractions.
- Flatten nesting; extract only when it clarifies call sites.
- Rename for intention; keep project naming conventions.
- Remove dead branches, unused params, and speculative extension points.
- Do not mix feature work into a simplify pass.

## Process

1. Identify the complex region and its tests/callers.
2. Establish baseline tests or characterization coverage.
3. Apply small clarity edits; verify after each chunk.
4. Stop when further changes are taste-only.

## Prefer

- Straight-line logic over clever indirection
- Explicit parameters over hidden ambient state
- Stdlib/existing helpers over new utility layers

## Exit

- [ ] Behavior unchanged
- [ ] Diff is smaller in concept count, not just line count
- [ ] Tests pass
