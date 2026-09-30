---
name: error-handling
description: Implement consistent, safe error handling. Use when adding failure paths, refactoring try/catch, designing error types, or improving observability.
---

# Error Handling

## Rules

- Fail at trust boundaries with clear, actionable errors.
- Use typed/domain errors for expected failures; reserve generic 500s for unexpected ones.
- Do not swallow errors without logging or propagating.
- Include stable error codes for clients when an API exists.
- Never leak secrets, stack traces, or internal paths to untrusted clients.
- Make retries safe: only retry transient failures with backoff.

## Patterns

- Validate early; return before side effects when possible.
- Wrap low-level errors with context once; avoid giant wrap chains.
- Prefer central mapping (domain → HTTP/RPC) over ad-hoc status codes.
- Log with correlation IDs at the boundary where the request is known.

## Checklist

- [ ] Expected failures are handled
- [ ] Unexpected failures are logged
- [ ] User/client messages are safe
- [ ] Partial failure semantics are defined for multi-step ops
