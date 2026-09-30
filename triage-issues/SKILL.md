---
name: triage-issues
description: Triage and work GitHub issues with clear next actions. Use when managing bugs/feature requests, labeling, reproducing reports, or closing duplicates.
---

# Triage Issues

## Process

1. Read the issue body, repro, and attachments.
2. Confirm vs duplicate/known issues; link relations.
3. Reproduce when it is a bug; note environment and version.
4. Label by type/severity/area using repo conventions.
5. Ask for missing repro details in one concise comment when blocked.
6. Propose next action: accept, close, needs-info, or schedule.

## Output

```
Issue: #n
Status: bug|enhancement|duplicate|invalid|needs-info
Severity: ...
Repro: yes|no|partial
Next: ...
```

## Rules

- Be respectful and specific in user-facing comments.
- Do not close actionable bugs without a reason and alternative path.
- Prefer links to code/commits over vague promises.
