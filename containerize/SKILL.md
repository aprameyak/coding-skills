---
name: containerize
description: Package apps with Docker and Compose sanely. Use when adding containers, fixing Docker builds, or setting up local service stacks.
---

# Containerize

## Defaults

- Small base images; pin tags/digests when reproducibility matters
- Non-root user when feasible
- Multi-stage builds for compiled/static assets
- `.dockerignore` excludes secrets, `.git`, and heavy unused trees
- One process per container; Compose for dependencies

## Process

1. Detect how the app builds/runs locally.
2. Write Dockerfile to reproduce that path.
3. Add Compose services for dependent DBs/caches as needed.
4. Pass config via env; never bake secrets into layers.
5. Verify: build → run → hit health endpoint/smoke command.

## Rules

- Match production runtime version closely enough to catch issues.
- Prefer official base images from trusted registries.
- Keep local Compose convenient without pretending to be full prod orchestration.
