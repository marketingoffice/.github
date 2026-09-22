#!/bin/bash
# SessionStart hook: install claude-mem (persistent memory for Claude Code).
#
# Remote sessions start from a fresh container, so anything installed under
# $HOME is gone when the session ends. This re-installs claude-mem on startup
# and brings its worker up. The container state is cached after the hook
# completes, so the install cost is normally paid once.
#
# Note: this restores the claude-mem software, not its memories. The store in
# ~/.claude-mem lives on the container and goes away with it. Carrying
# observations between sessions needs claude-mem cloud sync.
set -uo pipefail

# Local machines have their own setup; only run this in the cloud.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

MARKETPLACE_DIR="$HOME/.claude/plugins/marketplaces/thedotmack"

if [ ! -d "$MARKETPLACE_DIR" ]; then
  echo "claude-mem: installing..."
  # --provider claude  -> run memory off this session's own Anthropic account
  # --no-auto-start    -> bring the worker up ourselves, below
  if ! npx -y claude-mem@latest install \
        --ide claude-code \
        --provider claude \
        --no-auto-start < /dev/null; then
    echo "claude-mem: install failed; continuing without memory." >&2
    exit 0
  fi
else
  echo "claude-mem: already installed."
fi

# Start the worker, or restart it if a previous one died.
if ! npx -y claude-mem@latest start < /dev/null; then
  echo "claude-mem: worker failed to start; continuing without memory." >&2
fi

# Never block the session on claude-mem.
exit 0
