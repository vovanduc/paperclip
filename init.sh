#!/bin/bash
# Session baseline check (dcnet-workflow harness).
# Default: pin Node from .nvmrc, frozen install, repo-wide typecheck.
# FULL=1 ./init.sh  -> also runs Vitest suite + build (PR-ready check per AGENTS.md §7).
set -e
cd "$(dirname "$0")"

echo "=== Harness Initialization ==="
if [ -s "${NVM_DIR:-$HOME/.nvm}/nvm.sh" ]; then
  . "${NVM_DIR:-$HOME/.nvm}/nvm.sh"
  nvm use >/dev/null || nvm install
fi
node -e 'const [a,b]=process.versions.node.split(".").map(Number); if (a<24||(a===24&&b<11)) { console.error("Node >=24.11 required, got "+process.version); process.exit(1) }'
echo "node $(node -v), pnpm $(pnpm -v)"

pnpm install --frozen-lockfile
pnpm -r typecheck

if [ "${FULL:-0}" = "1" ]; then
  pnpm test:run
  pnpm build
fi

echo "=== Verification Complete ==="
echo "Next: read feature_list.json, pick ONE feature, implement only that, re-verify before done."
echo "Run app: pnpm dev  ->  http://localhost:3100"
