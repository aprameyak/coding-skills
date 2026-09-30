---
name: threat-model
description: Produce a lightweight threat model for a change. Use when designing auth, multi-tenant features, payments, file uploads, or security-sensitive systems.
---

# Threat Model

## Process

1. Describe the feature and assets (data, credentials, money, trust).
2. Draw trust boundaries (client, edge, app, data, third parties).
3. List actors: anonymous, user, admin, attacker, insider.
4. Enumerate threats (spoofing, tampering, repudiation, info leak, DoS, elevation).
5. Pick mitigations mapped to each realistic threat.
6. Feed mitigations into design/tests/review.

## Output

```
Assets: ...
Boundaries: ...
Threats:
- ... → mitigation ...
Residual risks: ...
Test ideas: ...
```

## Rules

- Prefer concrete abuse cases over generic OWASP lists alone.
- Focus on this change’s new attack surface.
- Pair with `security-review` before ship when stakes are high.
