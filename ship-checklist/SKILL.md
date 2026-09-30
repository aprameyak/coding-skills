---
name: ship-checklist
description: Run a pre-ship launch checklist before production. Use when releasing, enabling feature flags, or preparing a rollout.
---

# Ship Checklist

## Before Prod

- [ ] Acceptance checks from the spec are green
- [ ] Migrations are backward-compatible or staged
- [ ] Feature flag defaults are safe; rollback path known
- [ ] Observability: logs/metrics/alerts for the new path
- [ ] Secrets/config present in target env (not hardcoded)
- [ ] Performance-sensitive paths smoke-tested
- [ ] Security-sensitive changes reviewed
- [ ] Docs/runbook updated if operators are affected
- [ ] On-call knows the change window

## Rollout

1. Deploy quietly when possible (flag off).
2. Enable for internal/canary first.
3. Watch error rate, latency, and business KPIs.
4. Expand or roll back based on signals.

## Rules

- Prefer reversible releases.
- Do not ship with failing required checks.
- Record what was shipped (version/commit/flag).
