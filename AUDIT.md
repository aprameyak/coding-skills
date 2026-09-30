# Audit Report

Date: 2026-09-29
Auditor: automated `scripts/audit.sh` + manual review against popular public skill packs

## Scope

All `*/SKILL.md` files in this repository.

## External references reviewed

- Anthropic Agent Skills format (`SKILL.md` + progressive disclosure)
- addyosmani/agent-skills lifecycle map (spec/plan/build/verify/review/ship)
- Superpowers-style brainstorm + TDD discipline
- Matt Pocock grill-me / handoff patterns
- Popular marketplace categories: frontend, a11y, DevOps/CI, security, browser testing
- Vercel-style frontend quality / anti-slop guidance (distilled, not copied)

## Criteria

1. Valid YAML frontmatter with `name` and `description`
2. Folder name matches `name` field
3. Descriptions include what + when (`Use when` trigger terms)
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

Manual review confirmed skills cover clarify → plan → build → verify → review → ship, plus meta routing and session hygiene.

## Follow-ups

- Add stack-specific skills only when a concrete project needs them
- Keep skills short; split into `reference.md` if a skill grows past ~150 lines
