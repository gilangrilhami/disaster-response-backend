#!/usr/bin/env bash
set -euo pipefail

# Make a bashrc.d directory if it doesn't exist, to avoid polluting ~/.bashrc
mkdir -p ~/.bashrc.d

cat > ~/.bashrc.d/10-prompt.sh <<'EOF'
# Colored prompt with current git branch (or "no-git")
PS1="\[\e[1;32m\]@\u \[\e[1;34m\]➜ \[\e[1;33m\]\w \[\e[1;36m\]($(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo no-git))\[\e[0m\] "
EOF

# Ensure ~/.bashrc sources ~/.bashrc.d/*.sh
if ! grep -q 'bashrc.d' ~/.bashrc 2>/dev/null; then
  {
    echo ''
    echo '# Load per-file shell customizations'
    echo 'if [ -d "$HOME/.bashrc.d" ]; then'
    echo '  for f in "$HOME"/.bashrc.d/*.sh; do [ -r "$f" ] && . "$f"; done'
    echo 'fi'
  } >> ~/.bashrc
fi

# Install Python tools
pip install ruff uv pytest