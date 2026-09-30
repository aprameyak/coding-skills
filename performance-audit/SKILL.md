---
name: performance-audit
description: Find and fix meaningful performance issues. Use when investigating slowness, high memory/CPU, expensive queries, or optimizing hot paths.
---

# Performance Audit

## Process

1. Define the metric (latency, throughput, memory, cost) and target.
2. Measure before changing anything.
3. Find the hotspot with profiling or query plans, not guesses.
4. Fix the dominant bottleneck first.
5. Re-measure; stop when the target is met.

## Common Fixes

- N+1 queries → batch/join/dataloader
- Missing indexes → add based on query shapes
- Overfetch → select only needed fields / paginate
- Sync work on request path → cache or background job
- Repeated computation → memoize at the correct layer
- Large payloads → compress, paginate, stream

## Rules

- Do not optimize unmeasured code.
- Prefer algorithmic/IO fixes over micro-tweaks.
- Preserve correctness and readability; document intentional complexity.
- Include before/after numbers when reporting.
