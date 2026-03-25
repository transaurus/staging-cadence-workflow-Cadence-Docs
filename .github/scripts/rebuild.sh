#!/usr/bin/env bash
set -euo pipefail

# Rebuild script for cadence-workflow/Cadence-Docs
# Runs on existing source tree (no clone). Installs deps, builds.

# --- Node version ---
echo "[INFO] Node version: $(node --version)"
echo "[INFO] npm version: $(npm --version)"

# --- Dependencies ---
npm install --ignore-engines

# --- Build ---
npm run build

echo "[DONE] Build complete."
