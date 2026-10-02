# Coding Skills

Agent skill pack (`skill-name/SKILL.md`) for Cursor, Claude Code, Codex, Gemini CLI, OpenCode, and similar tools.

## Install

| Agent | Location |
|-------|----------|
| Cursor | `~/.cursor/skills/` or `.cursor/skills/` |
| Claude Code | `~/.claude/skills/` or `.claude/skills/` |
| Codex | `~/.codex/skills/` or `.codex/skills/` |
| Gemini CLI | per Gemini docs |
| OpenCode | `.opencode/skills/` or `~/.config/opencode/skills/` |

```bash
git clone https://github.com/aprameyak/coding-skills.git
cd coding-skills
./scripts/install.sh ~/.cursor/skills
```

One skill:

```bash
cp -R brainstorm ~/.cursor/skills/
```

## Start here

1. `skill-router` — pick a workflow
2. [WORKFLOWS.md](WORKFLOWS.md)
3. [CATALOG.md](CATALOG.md)

## Rules

- One skill, one job
- Short instructions
- Third-person descriptions with `Use when` triggers
- No platform lock-in

```bash
./scripts/audit.sh
```

## License

MIT
