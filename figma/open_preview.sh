#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4173}"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

printf 'Abre esta URL en Codex/browser: http://localhost:%s/preview.html\n' "$PORT"
python3 -m http.server "$PORT" --directory "$ROOT_DIR"
