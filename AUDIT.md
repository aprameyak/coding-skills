# Audit Report

Date: 2026-09-29
Auditor: automated `scripts/audit.sh` + manual review

## Scope

All `*/SKILL.md` files in this repository.

## Criteria

1. Valid YAML frontmatter with `name` and `description`
2. Folder name matches `name` field
3. Descriptions include what + when (trigger terms)
4. Body under 500 lines
5. No HTML comments, TODO/FIXME placeholders, or `//` line comments
6. No platform lock-in wording
7. Instructions are actionable and token-lean
8. Skills are complementary (minimal overlap in primary job)

## Result

Run:

```bash
./scripts/audit.sh
```

Manual review confirmed:

- 30 skills cover workflow, git/review, quality, engineering, language, and docs
- Each skill has a single primary job
- Install path documented for Cursor, Claude Code, and generic Agent Skills consumers
- No secrets or executable payloads beyond install/audit shell helpers

## Follow-ups

- Add stack-specific skills only when a concrete project needs them
- Keep skills short; split into `reference.md` if a skill grows past ~150 lines
