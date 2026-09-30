---
name: write-docs
description: Write concise technical documentation that matches the repo. Use when adding READMEs, API docs, runbooks, or explaining how something works.
---

# Write Docs

## Rules

- Document how to use and operate, not a transcript of development.
- Put the most common task first.
- Prefer short examples that can be copied.
- Match existing doc tone and structure.
- Link to code instead of duplicating large snippets that will rot.
- State prerequisites and exact commands.

## Structure

```
# Title
One-line purpose.

## Quick start
...

## Usage
...

## Troubleshooting
...
```

## Avoid

- Marketing fluff
- Stating the obvious for experts without helping newcomers
- Undated claims that go stale (“currently the best…”)
- Duplicating type signatures already clear in code unless they are public API contracts
