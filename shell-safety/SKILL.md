---
name: shell-safety
description: Run shell commands safely and predictably. Use when writing scripts, running destructive commands, or automating terminal workflows.
---

# Shell Safety

## Rules

- Prefer non-interactive flags; never rely on prompts.
- Quote variables and paths: `"$var"`.
- Use absolute paths when cwd is ambiguous.
- Chain with `&&` when later steps depend on earlier success.
- Avoid `rm -rf` on broad paths; narrow the target.
- Do not exfiltrate secrets into logs or argv that may be recorded.
- Read command help/version when flags differ across platforms.

## Dangerous Ops

Require explicit user intent for: force push, hard reset, mass delete, dropping databases, rewriting history, chmod/chown on large trees.

## Scripts

- Set strict mode when appropriate (`set -euo pipefail` in bash).
- Check exit codes for critical steps.
- Make scripts idempotent when used in retries/CI.
