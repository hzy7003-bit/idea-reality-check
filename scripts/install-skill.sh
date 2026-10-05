#!/bin/sh
set -eu

usage() {
  printf '%s\n' \
    'Usage: ./scripts/install-skill.sh <codex|claude-code|deepseek-harness|deepseek-deepcode>' \
    'Aliases: claude, dsh'
}

if [ "$#" -ne 1 ]; then
  usage >&2
  exit 2
fi

if [ -z "${HOME:-}" ]; then
  printf '%s\n' 'HOME must be set.' >&2
  exit 2
fi

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
REPO_ROOT=$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)
SOURCE="$REPO_ROOT/skills/idea-reality-check"

if [ ! -f "$SOURCE/SKILL.md" ]; then
  printf 'Cannot find the canonical Skill at %s\n' "$SOURCE" >&2
  exit 1
fi

case "$1" in
  codex)
    BASE_DIR=${CODEX_HOME:-"$HOME/.codex"}
    ;;
  claude|claude-code)
    BASE_DIR="$HOME/.claude"
    ;;
  dsh|deepseek-harness)
    BASE_DIR=${DSH_HOME:-${DSH_AGENTS_HOME:-"$HOME/.dsh"}}
    ;;
  deepseek-deepcode)
    BASE_DIR="$HOME/.agents"
    ;;
  -h|--help)
    usage
    exit 0
    ;;
  *)
    usage >&2
    exit 2
    ;;
esac

DEST_PARENT="$BASE_DIR/skills"
DEST="$DEST_PARENT/idea-reality-check"

if [ -e "$DEST" ] || [ -L "$DEST" ]; then
  printf 'Refusing to overwrite existing Skill: %s\n' "$DEST" >&2
  exit 1
fi

mkdir -p "$DEST_PARENT"
cp -R "$SOURCE" "$DEST_PARENT/"
printf 'Installed idea-reality-check to %s\n' "$DEST"
