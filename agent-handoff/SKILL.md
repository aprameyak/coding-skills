---
name: agent-handoff
description: Produce a concise handoff for another agent or session. Use when pausing work, switching agents, or documenting unfinished tasks.
---

# Agent Handoff

## Output

```
Goal: ...
Done:
- ...
In progress:
- ...
Not started:
- ...
Key files:
- path — why
Decisions:
- ...
Blockers / unknowns:
- ...
Next steps:
1. ...
2. ...
Commands to re-run:
- ...
```

## Rules

- Include only facts needed to continue without re-discovery.
- Link exact file paths and failing commands.
- State assumptions explicitly.
- Do not paste huge logs; summarize and point to artifacts.
