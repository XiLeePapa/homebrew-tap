# homebrew-tap

Homebrew tap for XiLeePapa's macOS builds.

## Casks

| Cask | What it is |
|---|---|
| `bleunlock` | [Fork of BLEUnlock](https://github.com/XiLeePapa/BLEUnlock) that shows device names, estimated distance, and your own device labels |

## Use

```
brew tap xileepapa/tap
brew install --cask xileepapa/tap/bleunlock
```

Homebrew loads casks from non-official taps only after you trust them. `brew install` records the trust for the cask you name; `brew info` asks you to run `brew trust xileepapa/tap` first.

The builds are signed ad-hoc and not notarized, so macOS asks you to approve the app once in **System Settings → Privacy & Security** before it starts.

Both this tap and Homebrew's own `bleunlock` install `/Applications/BLEUnlock.app`. Uninstall the one you are not keeping, or Homebrew finds an app it did not install.

## Update policy

Version strings look like `1.12.2,796`: the app version and the build number in the release tag `v1.12.2-build796`. `make dist` in the app repository prints the sha256 to put here.
