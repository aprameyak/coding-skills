# Coding Skills

Platform-agnostic Agent Skills pack (`skill-name/SKILL.md`) for Cursor, Claude Code, Codex, Gemini CLI, OpenCode, and compatible agents.

Informed by popular public workflow packs (lifecycle skills, TDD/brainstorm/handoff patterns, frontend quality, CI/security practices) distilled into lean, coding-focused skills.

## Install

| Agent | Location |
|-------|----------|
| Cursor | `~/.cursor/skills/` or `.cursor/skills/` |
| Claude Code | `~/.claude/skills/` or `.claude/skills/` |
| Codex | `~/.codex/skills/` or `.codex/skills/` |
| Gemini CLI | tool skills path / `GEMINI.md` per Gemini docs |
| OpenCode | `.opencode/skills/` or `~/.config/opencode/skills/` |

```bash
git clone https://github.com/aprameyak/coding-skills.git
# or: git clone git@github.com:aprameyak/coding-skills.git
cd coding-skills
./scripts/install.sh ~/.cursor/skills
```

Single skill:

```bash
cp -R brainstorm ~/.cursor/skills/
```

## Start here

1. `skill-router` — pick the right workflow
2. [WORKFLOWS.md](WORKFLOWS.md) — end-to-end chains
3. [CATALOG.md](CATALOG.md) — full list

## Design rules

- One skill = one job
- Short instructions; no fluff or comments
- Third-person descriptions with `Use when` triggers
- No platform lock-in
- Progressive disclosure only when needed

## Audit

```bash
./scripts/audit.sh
```

## License

MIT
