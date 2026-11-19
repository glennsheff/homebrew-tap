#!/bin/bash
# Points the MinimalCapture cask at a new release.
# Usage: ./bump.sh 1.0.2     (after the v1.0.2 release is published on GitHub)
set -euo pipefail
cd "$(dirname "$0")"

VERSION="${1:?usage: ./bump.sh <version>}"
URL="https://github.com/glennsheff/MinimalCapture/releases/download/v$VERSION/MinimalCapture.zip"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
curl -fsSL "$URL" -o "$TMP/MinimalCapture.zip"
SHA="$(shasum -a 256 "$TMP/MinimalCapture.zip" | cut -d' ' -f1)"

sed -i '' -E "s/^  version \".*\"/  version \"$VERSION\"/; s/^  sha256 \".*\"/  sha256 \"$SHA\"/" Casks/minimalcapture.rb
git add Casks/minimalcapture.rb
git commit -m "minimalcapture $VERSION"
git push
echo "Cask updated to $VERSION"
