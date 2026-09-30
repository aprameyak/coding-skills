---
name: docs-grounded
description: Ground framework and API usage in official documentation. Use when using unfamiliar libraries, upgrading APIs, or when correctness of external APIs matters.
---

# Docs Grounded

## Process

1. Identify the library/framework and version in the repo.
2. Fetch or open official docs for that version (not random blog posts first).
3. Cite the specific API/option you will use.
4. Implement to match the docs and existing repo patterns.
5. Flag anything unverified or inferred.

## Output

```
Source: <official doc title/URL/path>
Version: ...
Used APIs:
- ...
Unverified:
- ...
```

## Rules

- Prefer primary sources: official docs, RFCs, package READMEs for the pinned version.
- Do not invent config keys or CLI flags.
- If docs conflict with repo code, call out the conflict before changing behavior.
- Cache findings in the handoff notes for long sessions.
