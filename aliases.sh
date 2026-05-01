#!/usr/bin/env bash
# macroEngine-python — Shell Aliases
# ------------------------------------
# Source this file once to get short commands for the project tools.
#
# Usage (one-time in current shell):
#   source aliases.sh
#
# Usage (permanent — add to ~/.bashrc or ~/.zshrc):
#   echo "source /path/to/macroEngine-python/aliases.sh" >> ~/.bashrc
#
# Available commands after sourcing:
#   ame-extract [output_dir]   → extract.py
#   ame-lint    [--strict]     → lint.py
#   ame-pack    <dir> [out]    → pack.py
#   ame-validate [build_path]  → validate.py
#   ame-init    [build_dir]    → build.py

_AME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

alias ame-extract="python3 \"$_AME_DIR/extract.py\""
alias ame-lint="python3 \"$_AME_DIR/lint.py\""
alias ame-pack="python3 \"$_AME_DIR/pack.py\""
alias ame-validate="python3 \"$_AME_DIR/validate.py\""
alias ame-init="python3 \"$_AME_DIR/build_dp.py\""

echo "[ame] Aliases loaded from: $_AME_DIR"
echo "  ame-extract   ame-lint   ame-pack   ame-validate   ame-init"