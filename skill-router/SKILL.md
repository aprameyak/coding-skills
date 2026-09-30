---
name: skill-router
description: Choose the right skill workflow for the current task. Use at session start, when switching tasks, or when unsure which skill applies.
---

# Skill Router

## Map

| Situation | Skill |
|-----------|-------|
| Vague ask / need alignment | `brainstorm` |
| Need written acceptance checks | `spec-driven` |
| Large/unfamiliar repo | `explore-codebase` |
| Multi-file feature | `plan-before-code` → `incremental-slices` |
| Behavior change | `tdd` or `write-tests` |
| UI visuals | `frontend-design` + `accessibility` |
| Bug / failure | `debug-systematic` |
| PR prep | `verify-work` → `git-commit` → `create-pr` |
| Review comments | `address-feedback` |
| CI red | `fix-ci` |
| New pipeline | `setup-ci` |
| Security-sensitive | `security-review` / `threat-model` |
| Context dying | `agent-handoff` |
| Creating skills | `skill-authoring` |

## Rules

- Load one primary skill; add a second only if needed.
- Prefer the smallest skill that covers the job.
- Follow lifecycle order: clarify → plan → build → verify → review → ship.
- Prefer published pack workflow chains when available (`WORKFLOWS.md` in this repo).
