---
name: release-notes
description: Draft accurate release notes from commits and PRs. Use when preparing releases, changelogs, or user-facing version summaries.
---

# Release Notes

## Process

1. Collect commits/PRs since the last release tag.
2. Group by user impact: added, changed, fixed, security, breaking.
3. Rewrite jargon into user/operator language.
4. Call out breaking changes and migration steps first.
5. Omit chore-only noise unless it affects operators.

## Format

```
## Highlights
- ...

## Breaking changes
- ...

## Added
- ...

## Fixed
- ...

## Internal
- ...
```

## Rules

- Attribute issues/PRs when the project convention requires it.
- Do not invent features not in the diff.
- Prefer outcomes over implementation details.
