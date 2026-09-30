---
name: python-quality
description: Write clear, typed, idiomatic Python. Use when editing Python code, scripts, APIs, or tests.
---

# Python Quality

## Rules

- Follow the repo’s formatter/linter (ruff, black, isort, mypy/pyright).
- Prefer clear functions with explicit parameters over deep nesting.
- Use type hints on public functions and complex internals.
- Raise specific exceptions; include context in messages.
- Use context managers for resources.
- Prefer pathlib and stdlib where enough; add deps only when needed.
- Keep modules cohesive; avoid circular imports via structure, not hacks.

## Avoid

- Bare `except:`
- Mutable default arguments
- Wildcard imports
- Mixing tabs/spaces or fighting the project’s style

## Checklist

- [ ] Relevant tests pass
- [ ] Types/lints clean for touched files
- [ ] Scripts have clear entrypoints and exit codes
