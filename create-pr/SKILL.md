---
name: create-pr
description: Create focused pull requests with clear summaries. Use when the user asks to open a PR, submit changes for review, or push a branch for review.
---

# Create PR

## Steps

1. In parallel: `git status`, `git diff`, branch tracking check, `git log` and diff vs base branch.
2. Confirm commits on the branch belong together; split if unrelated.
3. Push with `-u` if the branch has no remote.
4. Create the PR with title + body HEREDOC.
5. Return the PR URL.

## Body Template

```
## Summary
- <what and why>
- <what and why>

## Test plan
- [ ] <command or manual check>
- [ ] <edge case>
```

## Rules

- Prefer the repo’s default base branch.
- Title summarizes intent, not file lists.
- Do not force-push protected branches.
- Include only relevant commits since divergence from base.
