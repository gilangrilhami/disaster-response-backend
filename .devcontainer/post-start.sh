#!/usr/bin/env bash
set -euo pipefail
[ -d /workspace ] && sudo chown -R "$(id -u)":"$(id -g)" /workspace || true
