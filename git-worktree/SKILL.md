---
name: git-worktree
description: Use git worktrees for isolated parallel work. Use when running parallel agents, long-lived features beside hotfixes, or when the user asks for a worktree.
---

# Git Worktree

## Process

1. Confirm a clean understanding of branch name and purpose.
2. Create a worktree in a sibling directory with a dedicated branch.
3. Do all work for that task inside the worktree cwd.
4. Run tests/commits in that worktree only.
5. Remove the worktree when the branch is merged or abandoned.

## Commands

```bash
git fetch origin
git worktree add ../repo-feature -b feature/name origin/main
git worktree list
git worktree remove ../repo-feature
```

## Rules

- Do not reuse one dirty working tree for conflicting tasks.
- Keep worktree paths predictable and outside nested `.git` confusion.
- Never delete a worktree with uncommitted needed work without checking status.
- Prefer worktrees over stashing tennis for long parallel efforts.
