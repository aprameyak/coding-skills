---
name: migrate-code
description: Migrate APIs, frameworks, or patterns incrementally. Use when upgrading major frameworks, moving modules, or replacing legacy patterns.
---

# Migrate Code

## Strategy

1. Inventory call sites and compatibility constraints.
2. Choose expand/contract: add new path, dual-write/read if needed, remove old path last.
3. Migrate in thin vertical slices that stay shippable.
4. Keep feature flags or compatibility shims when risk is high.
5. Remove dead legacy code only after verification.

## Rules

- Do not big-bang rewrite when incremental is possible.
- Preserve behavior with characterization tests before moving logic.
- Document interim dual-path states and the removal criteria.
- Match the target pattern already established in the repo when one exists.

## Exit Criteria

- [ ] Old path unused or clearly deprecated
- [ ] Tests cover migrated behavior
- [ ] Rollback approach known
