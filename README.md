# Homebrew tap

Casks for my apps.

## MinimalCapture

A tiny macOS menu bar screenshot tool. [Source and details](https://github.com/glennsheff/MinimalCapture).

```bash
brew tap glennsheff/tap && brew trust glennsheff/tap && brew install --cask minimalcapture
```

The `brew trust` part is required by Homebrew 7 and later, which will not load casks from a
third-party tap until you say you trust it. On an older Homebrew, leave it out.

Update later with:

```bash
brew upgrade --cask minimalcapture
```

## Maintaining

After publishing a new MinimalCapture release on GitHub, run `./bump.sh <version>` here to
point the cask at it.
