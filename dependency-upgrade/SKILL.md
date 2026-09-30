---
name: dependency-upgrade
description: Upgrade dependencies safely with minimal risk. Use when bumping packages, resolving CVEs, or updating major versions.
---

# Dependency Upgrade

## Process

1. Identify current version, target version, and changelog/breaking notes.
2. Prefer the project’s package manager and lockfile workflow.
3. Upgrade the smallest set that achieves the goal (one package or related group).
4. Run install, then tests/typecheck/build.
5. Fix breakages caused by the upgrade only.
6. Summarize behavioral or API changes that affect the app.

## Rules

- Do not upgrade unrelated packages opportunistically.
- Pin/lock according to repo convention.
- For majors: read migration guides before editing call sites.
- For security advisories: confirm the advisory applies to the used code path.
- Commit lockfile and manifest together.
