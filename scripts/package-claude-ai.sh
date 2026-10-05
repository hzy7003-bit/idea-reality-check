#!/bin/sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
REPO_ROOT=$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)
SOURCE="$REPO_ROOT/skills/idea-reality-check"

if [ ! -f "$SOURCE/SKILL.md" ]; then
  printf 'Cannot find the canonical Skill at %s\n' "$SOURCE" >&2
  exit 1
fi

if ! command -v zip >/dev/null 2>&1; then
  printf '%s\n' 'The zip command is required to build the Claude.ai upload archive.' >&2
  exit 1
fi

OUTPUT=${1:-"$REPO_ROOT/dist/idea-reality-check-claude-ai.zip"}
case "$OUTPUT" in
  /*) ;;
  *) OUTPUT="$PWD/$OUTPUT" ;;
esac

if [ -e "$OUTPUT" ]; then
  printf 'Refusing to overwrite existing archive: %s\n' "$OUTPUT" >&2
  exit 1
fi

OUTPUT_DIR=$(dirname -- "$OUTPUT")
mkdir -p "$OUTPUT_DIR"
STAGE=$(mktemp -d "${TMPDIR:-/tmp}/idea-reality-check-claude-ai.XXXXXX")
trap 'rm -rf "$STAGE"' EXIT HUP INT TERM

PACKAGE="$STAGE/idea-reality-check"
mkdir -p "$PACKAGE"
cp "$SOURCE/SKILL.md" "$PACKAGE/skill.md"
cp -R "$SOURCE/references" "$PACKAGE/references"
cp -R "$SOURCE/assets" "$PACKAGE/assets"

(cd "$STAGE" && zip -qr "$OUTPUT" idea-reality-check)
printf 'Created Claude.ai upload archive: %s\n' "$OUTPUT"
