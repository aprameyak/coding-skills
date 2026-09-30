# Workflows

Common chains composed from this pack. Pick one primary skill; use the chain as a guide.

## Feature

`brainstorm` → `spec-driven` → `plan-before-code` → `incremental-slices` → `tdd` → `verify-work` → `git-commit` → `create-pr`

## Bugfix

`debug-systematic` → `tdd` (repro test) → `minimal-diff` → `verify-work` → `git-commit`

## UI

`brainstorm` → `frontend-design` → `accessibility` → `browser-verify` → `verify-work`

## Review & merge

`code-review` → `address-feedback` → `fix-ci` (if red) → `ship-checklist`

## Security-sensitive

`threat-model` → `security-review` → `tdd` → `observability` → `ship-checklist`

## Legacy edit

`explore-codebase` → `legacy-change` → `simplify-code` (optional) → `verify-work`

## Pipeline work

`setup-ci` or `fix-ci` → `verify-work` → `create-pr`

## Session management

`skill-router` at start → `context-efficient` while working → `agent-handoff` before context dies → `git-worktree` for parallel agents

## Always-on discipline

Keep `agent-discipline` and `minimal-diff` in mind for every coding task.
