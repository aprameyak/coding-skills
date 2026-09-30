---
name: incremental-slices
description: Deliver thin vertical slices that stay shippable. Use when building features across multiple layers or when the user wants incremental delivery.
---

# Incremental Slices

## Goal

Each slice is mergeable, testable, and optionally dark behind a flag.

## Process

1. Split the feature into vertical slices (UI→API→data or equivalent), not horizontal layers.
2. Order by learning value and risk reduction.
3. For each slice: implement → verify → commit.
4. Use feature flags or safe defaults when releasing incomplete user journeys.
5. Keep rollback simple (flag off / revert commit).

## Slice Shape

```
Slice: <name>
User-visible outcome: ...
Touch points: ...
Test/verification: ...
Flag/default: ...
```

## Rules

- Do not build the entire backend before any UI (or vice versa) unless constrained.
- Prefer end-to-end stubbed paths early over perfect abstractions.
- Keep each slice within a reviewable diff size when possible.
