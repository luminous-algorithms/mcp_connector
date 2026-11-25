#!/usr/bin/env bash
# Builds the directory submission zip from the files tracked in git.
set -euo pipefail
cd "$(dirname "$0")/.."
version=$(python3 -c 'import json;print(json.load(open("plugin.json"))["version"])')
mkdir -p dist
out="dist/luminous-algorithms-v${version}.zip"
rm -f "$out"
zip -q "$out" plugin.json mcp.json .mcp.json .codex-plugin/plugin.json assets/icon.png skills/optical-simulation/SKILL.md
echo "Built $out"
unzip -l "$out"
