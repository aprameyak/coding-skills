---
name: explore-codebase
description: Efficiently map and search a codebase before changing it. Use when entering an unfamiliar repo, locating implementations, or answering architecture questions.
---

# Explore Codebase

## Goal

Build enough mental model to act correctly while minimizing reads and tokens.

## Order of Operations

1. Read root manifests (`README`, `package.json`, `pyproject.toml`, `go.mod`, `Cargo.toml`, lockfiles).
2. Map top-level directories; infer app vs lib vs tests vs infra.
3. Search by symbol and path patterns before opening large files.
4. Open entrypoints, routers, and config first.
5. Trace one happy-path call chain end-to-end.
6. Only then open deep implementation files.

## Search Strategy

- Prefer exact symbol / string search over broad greps.
- Cap initial reads; expand only where evidence points.
- Parallelize independent searches.
- Ignore generated dirs (`node_modules`, `dist`, `build`, `.git`, vendor caches).

## Record

```
Stack: ...
Entrypoints: ...
Key modules: ...
Conventions: ...
Test command: ...
```

## Rules

- Do not edit until the change site and callers are identified.
- Prefer existing patterns over inventing new ones.
- Cite file paths when summarizing findings.
