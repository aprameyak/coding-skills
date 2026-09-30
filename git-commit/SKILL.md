---
name: git-commit
description: Create precise git commits with focused messages. Use when the user asks to commit, save changes, or write a commit message.
---

# Git Commit

## Steps

1. Run in parallel: `git status`, `git diff` (staged + unstaged), `git log -5 --oneline`.
2. Decide which files belong in this commit; exclude secrets and unrelated noise.
3. Stage selected paths only.
4. Draft a 1–2 sentence message that states why, matching repo style from recent commits.
5. Commit with a HEREDOC. Do not use `--no-verify` unless explicitly requested.
6. Run `git status` to confirm success.

## Message Shape

```
<optional-type>: <imperative summary ≤72 chars>

<optional body: why, not what>
```

## Forbidden

- Updating git config
- Committing `.env`, keys, credentials, or large binaries
- Force push, hard reset, or amend of pushed commits unless explicitly requested
- Empty commits
