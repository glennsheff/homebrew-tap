# Homebrew tap

Casks for my apps.

## MinimalCapture

A tiny macOS menu bar screenshot tool. [Source and details](https://github.com/glennsheff/MinimalCapture).

```bash
brew install --cask glennsheff/tap/minimalcapture
```

Update later with:

```bash
brew upgrade --cask minimalcapture
```

## Maintaining

After publishing a new MinimalCapture release on GitHub, run `./bump.sh <version>` here to
point the cask at it.
