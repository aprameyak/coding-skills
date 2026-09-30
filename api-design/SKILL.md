---
name: api-design
description: Design and evolve HTTP/RPC APIs consistently. Use when adding endpoints, changing contracts, versioning, or reviewing API shape.
---

# API Design

## Defaults

- Clear resource nouns; HTTP methods match semantics.
- Consistent naming, pagination, filtering, and error shape.
- Explicit auth requirements per endpoint.
- Idempotent writes where clients may retry (`PUT`/`DELETE` or idempotency keys).
- Backward-compatible changes when consumers exist.

## Request/Response

- Validate inputs at the boundary; reject with actionable errors.
- Use stable field names; avoid cryptic abbreviations.
- Return sufficient IDs for follow-up calls.
- Prefer additive fields over renames/removals.

## Breaking Changes

Require a version strategy or coordinated migration when removing fields, changing types, or altering auth semantics.

## Checklist

- [ ] AuthZ defined
- [ ] Error codes documented
- [ ] Pagination/limits on lists
- [ ] No sensitive data in URLs/logs
- [ ] Compatibility impact stated
