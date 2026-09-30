---
name: setup-ci
description: Design and add CI/CD pipelines with useful quality gates. Use when creating or changing GitHub Actions, build pipelines, or deploy workflows.
---

# Setup CI

## Principles

- Shift checks left: format/lint/typecheck/unit on every PR.
- Fail fast with clear logs; cache dependencies.
- Pin action versions; least-privilege permissions.
- Keep feedback loops short; reserve slow jobs for needed paths.
- Prefer reusable workflows/templates already in the org/repo.

## Process

1. Detect existing CI and package scripts.
2. Define gates: install → lint/typecheck → test → build → (optional) deploy.
3. Match local developer commands to CI commands.
4. Add caching and artifact upload only where useful.
5. Document required secrets and how to run the same checks locally.

## Safety

- No broad `write` permissions by default
- No publishing/deploy from fork PRs without controls
- Secrets never echoed

## Exit

- [ ] Pipeline runs on the target events
- [ ] Failure messages point to the real command
- [ ] Local reproduction command documented
