---
name: database-changes
description: Make safe schema and query changes. Use when writing migrations, altering tables, adding indexes, or changing data access.
---

# Database Changes

## Process

1. Prefer additive, backward-compatible migrations first.
2. Separate schema deploy from code that depends on destructive changes when zero-downtime matters.
3. Name migrations clearly; make them idempotent when the tool allows.
4. Index for real query patterns; avoid unused indexes.
5. Test migrations up (and down if supported) on realistic data volume when possible.

## Safety

- Never drop/rename columns in the same release that still reads them.
- Avoid long locks on hot tables; use online/concurrent strategies supported by the DB.
- Backfill in batches; checkpoint progress.
- Backup/restore plan for destructive ops.
- Parameterize all queries; no string-built SQL with untrusted input.

## Checklist

- [ ] Migration is reversible or explicitly marked irreversible
- [ ] App compatibility across expand/contract phases considered
- [ ] Heavy locks avoided or scheduled
- [ ] Data integrity constraints defined
