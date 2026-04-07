#!/bin/bash
set -e

# Resolve the project root (parent of the scripts/ directory)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$PROJECT_ROOT"

# Build all decks
for deck in decks/*/; do
  name=$(basename "$deck")
  echo "Building $name..."
  pnpm exec slidev build "$deck/slides.md" --base "/$name/" --out "$PROJECT_ROOT/dist/$name"
done

echo "Done! All decks built to dist/"
