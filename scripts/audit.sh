#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
fail=0
count=0

echo "Auditing skills in $ROOT"
echo

check_skill() {
  local dir="$1"
  local name skill file
  name="$(basename "$dir")"
  file="$dir/SKILL.md"
  count=$((count + 1))

  if [[ ! -f "$file" ]]; then
    echo "FAIL $name: missing SKILL.md"
    fail=$((fail + 1))
    return
  fi

  if ! head -n 1 "$file" | grep -q '^---$'; then
    echo "FAIL $name: missing YAML frontmatter start"
    fail=$((fail + 1))
  fi

  if ! grep -q '^name: ' "$file"; then
    echo "FAIL $name: missing name"
    fail=$((fail + 1))
  fi

  skill="$(grep '^name: ' "$file" | head -n1 | sed 's/^name:[[:space:]]*//')"
  if [[ "$skill" != "$name" ]]; then
    echo "FAIL $name: name '$skill' != folder '$name'"
    fail=$((fail + 1))
  fi

  if ! grep -q '^description: ' "$file"; then
    echo "FAIL $name: missing description"
    fail=$((fail + 1))
  fi

  desc="$(grep '^description: ' "$file" | head -n1)"
  if [[ ${#desc} -lt 40 ]]; then
    echo "FAIL $name: description too short"
    fail=$((fail + 1))
  fi

  if [[ ${#desc} -gt 1100 ]]; then
    echo "FAIL $name: description too long"
    fail=$((fail + 1))
  fi

  if ! echo "$skill" | grep -Eq '^[a-z0-9-]+$'; then
    echo "FAIL $name: invalid name chars"
    fail=$((fail + 1))
  fi

  if [[ $(wc -l < "$file") -gt 500 ]]; then
    echo "FAIL $name: SKILL.md exceeds 500 lines"
    fail=$((fail + 1))
  fi

  if grep -n -E '<!--|TODO|FIXME|lorem ipsum|XXX' "$file" >/dev/null; then
    echo "FAIL $name: contains comments or placeholders"
    fail=$((fail + 1))
  fi

  if grep -n -E '(Cursor-only|Claude Code only|Codex only|must use Cursor|only works in)' "$file" >/dev/null; then
    echo "FAIL $name: platform lock-in language"
    fail=$((fail + 1))
  fi

  if grep -n -E '^\s*//' "$file" >/dev/null; then
    echo "FAIL $name: line comments found"
    fail=$((fail + 1))
  fi

  lines=$(wc -l < "$file" | tr -d ' ')
  echo "OK   $name ($lines lines)"
}

for dir in "$ROOT"/*/ ; do
  if [[ -f "$dir/SKILL.md" ]]; then
    check_skill "$dir"
  fi
done

echo
echo "skills audited: $count"

if [[ "$count" -lt 1 ]]; then
  echo "FAIL: no skills found"
  exit 1
fi

if [[ "$fail" -gt 0 ]]; then
  echo "FAIL: $fail issue(s)"
  exit 1
fi

echo "PASS: audit clean"
