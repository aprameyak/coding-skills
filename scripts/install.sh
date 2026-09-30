#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${1:-}"

if [[ -z "$DEST" ]]; then
  echo "usage: $0 <skills-directory>"
  echo "example: $0 ~/.cursor/skills"
  exit 1
fi

mkdir -p "$DEST"
count=0
for dir in "$ROOT"/*/ ; do
  name="$(basename "$dir")"
  if [[ -f "$dir/SKILL.md" ]]; then
    rm -rf "$DEST/$name"
    cp -R "$dir" "$DEST/$name"
    count=$((count + 1))
  fi
done

echo "installed $count skills → $DEST"
