#!/usr/bin/env bash
# Builds the SDK and calls the live API: a public endpoint, a form POST,
# and an authenticated one with a bad key (which must fail with 401/403).
set -euo pipefail
cd "$(dirname "$0")/.."
npm install --no-audit --no-fund --silent
npm run build --silent
tarball="$PWD/$(npm pack --silent)"
app=$(mktemp -d)
cp smoke/smoke.mjs "$app/"
cd "$app"
npm init -y >/dev/null
npm install --no-audit --no-fund --silent "$tarball"
node smoke.mjs
