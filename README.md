# NuttapongPun/homebrew-tap

A [Homebrew](https://brew.sh) tap for **[Scrub](https://github.com/NuttapongPun/scrub)** — a
macOS menu-bar "cleaning mode" that locks the keyboard/trackpad and dims the screen while you
wipe down the machine.

## Install

```sh
brew install --cask NuttapongPun/tap/scrub
```

Scrub is currently **unsigned** (no Developer ID notarization yet), so the first time macOS
blocks it you'll need to right-click **Scrub.app → Open** once (or allow it under **System
Settings → Privacy & Security**). On first launch, grant **Accessibility** permission so Scrub
can lock input.

Upgrade later with `brew upgrade --cask scrub`.

## Maintenance

The cask is version-pinned to a published
[Scrub release](https://github.com/NuttapongPun/scrub/releases). On each release, the
`scripts/update-cask.sh` script in the main repo opens a pull request here that bumps the
`version` and `sha256`. Merge it to publish.

Commits follow [Conventional Commits](https://www.conventionalcommits.org/). The `main` branch
is protected: changes land via pull request only.
