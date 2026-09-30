---
name: typescript-strict
description: Write strict, idiomatic TypeScript. Use when editing TS/TSX code, fixing type errors, or designing shared types.
---

# TypeScript Strict

## Rules

- Prefer `unknown` over `any`; narrow before use.
- Model domain data with precise types and discriminated unions.
- Avoid type assertions unless boundary-validated; justify each `as`.
- Keep shared types near their source of truth; do not duplicate.
- Use `readonly` and `as const` where immutability helps.
- Exhaustiveness-check switches on unions.
- Prefer typed errors and result shapes over thrown strings.

## Avoid

- Disabling `strict` or broad `eslint-disable` to silence errors
- Huge utility-type puzzles that hurt readability
- Optional fields that should be required states in a union

## Checklist

- [ ] `tsc` / typecheck passes for touched packages
- [ ] Public exports have intentional, stable types
- [ ] No new `any` without an explicit boundary comment requirement from the repo
