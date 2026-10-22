#!/bin/sh
# Developer tool: builds the zip to upload to mod.io.
# Run from the plugin folder:  sh tools/package.sh
# mod.io needs main.lua and plugin.json at the top of the zip (not inside a
# folder), so we zip the folder's contents. Only files the game needs are
# included: main.lua, plugin.json, src/ and the README/changelog/licence notes.

set -e
VERSION=$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' plugin.json)
mkdir -p dist
OUT="dist/training-path-$VERSION.zip"
rm -f "$OUT"
zip -r -X "$OUT" main.lua plugin.json src README.md CHANGELOG.md -x '*.DS_Store' -x 'src/debug_*'
echo "Built $OUT"
