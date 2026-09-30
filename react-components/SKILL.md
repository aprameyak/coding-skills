---
name: react-components
description: Build React components with clear state and effects. Use when creating or refactoring React UI, hooks, or client data fetching.
---

# React Components

## Rules

- Match the project’s React style (Server Components, routers, state libs).
- Keep components focused; extract hooks for reusable stateful logic.
- Derive values during render when possible; avoid redundant state.
- List effect dependencies correctly; do not fake stability without cause.
- Colocate UI state with the nearest owner; lift only when sharing requires it.
- Handle loading, empty, and error states explicitly for async UI.
- Prefer controlled inputs when the parent must own the value.

## Avoid

- Effects that sync props→state unnecessarily
- Prop drilling through many layers when project already uses a store/context pattern
- Inline huge components that bury the main render path
- Accessibility regressions (labels, keyboard, focus)

## Checklist

- [ ] No broken hooks rules
- [ ] Keyed lists are stable
- [ ] User-facing errors are understandable
