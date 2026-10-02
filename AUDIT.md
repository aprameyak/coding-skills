# Audit report

Date: 2026-09-29

## Scope

All `*/SKILL.md` files.

## Criteria

1. YAML frontmatter with `name` and `description`
2. Folder name matches `name`
3. Descriptions include what + when (`Use when`)
4. Body under 500 lines
5. No HTML comments, TODO/FIXME, or `//` line comments
6. No platform lock-in
7. Actionable, short instructions
8. Low overlap between skills

```bash
./scripts/audit.sh
```

## Notes

Prefer thin skills. Split into `reference.md` past ~150 lines. Add stack-specific skills only when a project needs them.

## License

MIT
