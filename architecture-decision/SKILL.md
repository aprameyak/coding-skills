---
name: architecture-decision
description: Capture architecture decisions as short ADRs. Use when choosing between significant technical approaches or recording why a design exists.
---

# Architecture Decision

## When

Use for choices that are costly to reverse: data stores, service boundaries, auth models, public APIs, event schemas.

## Template

```
# ADR-<n>: <title>

Status: proposed|accepted|superseded
Date: <YYYY-MM-DD>

## Context
<forces and constraints>

## Decision
<what we will do>

## Alternatives
- <option>: <why not>

## Consequences
- positive: ...
- negative: ...
- follow-ups: ...
```

## Rules

- One decision per ADR.
- Be concrete; name systems and constraints.
- Prefer reversible experiments when uncertainty is high.
- Update status when superseded; do not rewrite history silently.
