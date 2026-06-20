# homebrew-openpets

A [Homebrew](https://brew.sh) tap for **[OpenPets](https://openpets.dev/)** — a desktop
companion platform with animated pets, plugins, and optional local agent integrations
(upstream: [`alvinunreal/openpets`](https://github.com/alvinunreal/openpets)).

This tap lets you install and update OpenPets the Mac-native way instead of downloading the
`.dmg` by hand each time.

## Install

```sh
brew tap meade-group/openpets
brew install --cask openpets
```

Or as a one-liner without tapping first:

```sh
brew install --cask meade-group/openpets/openpets
```

### First launch: allow the app through Gatekeeper

The upstream OpenPets build is **not notarized by Apple**, so on first launch macOS Gatekeeper
will refuse to open it. Pick whichever you prefer:

- Right-click `OpenPets.app` in `/Applications` and choose **Open** (then **Open** again), or
- Open it once, then go to **System Settings → Privacy & Security** and click **Open Anyway**, or
- Clear the quarantine flag from a terminal:

  ```sh
  xattr -dr com.apple.quarantine /Applications/OpenPets.app
  ```

You only need to do this once per installed version.

## Update

```sh
brew upgrade --cask openpets
```

## Uninstall

```sh
brew uninstall --cask openpets          # remove the app
brew uninstall --zap --cask openpets    # also remove settings and caches
```

## How updates stay current

A scheduled GitHub Action ([`.github/workflows/bump.yml`](.github/workflows/bump.yml)) checks
upstream daily and, whenever OpenPets publishes a new release, commits the version + checksum
bump straight to `main` (checksums are read from upstream's signed `SHA256SUMS`). Then
`brew upgrade --cask openpets` picks it up — no manual steps.

---

Not affiliated with the upstream OpenPets project; this tap only repackages its public release
artifacts for Homebrew.
