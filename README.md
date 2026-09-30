# Coding Skills

Agent Skills pack organized as `skill-name/SKILL.md`. Platform-agnostic. Copy any skill folder into your agent’s skills directory.

## Install

| Agent | Location |
|-------|----------|
| Cursor | `~/.cursor/skills/` (personal) or `.cursor/skills/` (project) |
| Claude Code | `.claude/skills/` or `~/.claude/skills/` |
| Codex / other | Use the agent’s documented skills path; format is standard Agent Skills (`SKILL.md` + YAML frontmatter) |

```bash
git clone git@github.com:aprameyak/coding-skills.git
cp -R coding-skills/plan-before-code ~/.cursor/skills/
```

Install all:

```bash
./scripts/install.sh ~/.cursor/skills
```

## Catalog

See [CATALOG.md](CATALOG.md).

## Design Rules

- One skill = one job
- Short instructions; no fluff
- Third-person descriptions with trigger terms
- No platform lock-in
- Progressive disclosure only when a skill needs a reference file

## Audit

```bash
./scripts/audit.sh
```
