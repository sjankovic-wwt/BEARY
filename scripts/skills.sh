#!/usr/bin/env bash
set -euo pipefail

ACTION="${1:-}"
TARGET="${2:-$(pwd)}"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SRC="$REPO_ROOT/beary"

if [ -z "$ACTION" ]; then
  echo "Usage: scripts/skills.sh <install|update|uninstall|doctor> [target_project_path]"
  exit 1
fi

DEST_AGENT="$TARGET/.agent"
DEST_SKILL="$DEST_AGENT/skills/beary"
DEST_COMMANDS="$DEST_AGENT/commands"

install_like() {
  mkdir -p "$DEST_SKILL" "$DEST_COMMANDS"
  rsync -a --delete "$SRC/" "$DEST_SKILL/"

  ln -sfn ../skills/beary/commands/research-to-whitepaper.md "$DEST_COMMANDS/research-to-whitepaper.md"

  for p in .agents .claude .cursor .gemini .opencode .windsurf; do
    [ -e "$TARGET/$p" ] || [ -L "$TARGET/$p" ] || ln -s .agent "$TARGET/$p"
  done

  [ -e "$TARGET/AGENTS.md" ] || [ -L "$TARGET/AGENTS.md" ] || ln -s .agent/skills/beary/AGENTS.md "$TARGET/AGENTS.md"
  [ -e "$TARGET/CLAUDE.md" ] || [ -L "$TARGET/CLAUDE.md" ] || ln -s AGENTS.md "$TARGET/CLAUDE.md"
  [ -e "$TARGET/GEMINI.md" ] || [ -L "$TARGET/GEMINI.md" ] || ln -s AGENTS.md "$TARGET/GEMINI.md"

  echo "Installed beary skill into: $TARGET"
}

case "$ACTION" in
  install|update)
    install_like
    ;;
  uninstall)
    rm -rf "$DEST_SKILL"
    rm -f "$DEST_COMMANDS/research-to-whitepaper.md"
    echo "Uninstalled beary skill from: $TARGET"
    ;;
  doctor)
    echo "Checking target: $TARGET"
    [ -d "$DEST_SKILL" ] && echo "OK: skill dir" || echo "MISSING: $DEST_SKILL"
    [ -e "$DEST_COMMANDS/research-to-whitepaper.md" ] && echo "OK: command link" || echo "MISSING: command link"
    ;;
  *)
    echo "Unknown action: $ACTION"
    exit 1
    ;;
esac
