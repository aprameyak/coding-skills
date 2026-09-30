---
name: code-review
description: Review diffs for correctness, security, and maintainability. Use when reviewing PRs, examining patches, or when the user asks for a code review.
---

# Code Review

## Process

1. Read the PR description and linked issue.
2. Skim the full diff for scope and intent.
3. Trace changed control flow and data flow.
4. Check tests against claimed behavior.
5. Report findings ordered by severity.

## Severity

- **Blocker**: wrong behavior, data loss, security hole, broken build
- **Major**: likely bug, missing validation, weak tests for critical path
- **Minor**: clarity, naming, small maintainability issues
- **Nit**: pure preference; use sparingly

## Checklist

- [ ] Correctness and edge cases
- [ ] AuthZ/AuthN and untrusted input handling
- [ ] Concurrency, retries, idempotency where relevant
- [ ] Error paths and user-visible failures
- [ ] Performance footguns (N+1, unbounded allocs)
- [ ] Tests cover the change
- [ ] No secrets or PII leakage
- [ ] API/compat breakage is intentional and documented

## Output

```
Verdict: approve | request changes | comment
Blockers:
- file:line — issue — fix hint
Majors:
- ...
Notes:
- ...
```

## Rules

- Critique the diff, not the author.
- Prefer concrete fixes over vague advice.
- Do not demand refactors unrelated to the change.
