---
name: incident-triage
description: Triage production incidents quickly and safely. Use for outages, elevated errors, customer-impacting bugs, or on-call style debugging.
---

# Incident Triage

## Order

1. **Stabilize**: mitigate user impact (rollback, feature flag, scale, rate-limit) before deep fixes.
2. **Scope**: start/end time, affected users/regions, error rate, blast radius.
3. **Signal**: dashboards, logs, traces, recent deploys, dependency status.
4. **Hypothesize**: top causes tied to recent changes or infra signals.
5. **Fix forward or roll back** based on risk and time-to-recover.
6. **Verify**: metrics return to baseline; monitor for recurrence.
7. **Notes**: timeline, cause, fix, follow-ups.

## Communication

```
Status: investigating|mitigated|resolved
Impact: ...
Current action: ...
Next update: ...
```

## Rules

- Prefer reversible mitigations.
- Do not deploy speculative large changes during active firefighting.
- Preserve evidence (logs, deploy IDs) for the postmortem.
- One clear owner for the next action at all times.
