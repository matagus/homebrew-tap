# matagus/homebrew-tap

Homebrew tap for [`matagus/shelve`](https://github.com/matagus/shelve).

## Install

```bash
brew tap matagus/tap
brew install shelve
```

## Upgrade

```bash
brew upgrade shelve
```

## What's in here

| Formula | Description |
| --- | --- |
| [`shelve`](Formula/shelve.rb) | Pretty-print CSV files grouped by a column. |

## How updates stay current

`.github/workflows/update-formula.yml` runs whenever a `v*.*.*` tag is pushed to
the `shelve` repository. It rewrites the formula's `url` and `sha256` for the new
tag, opens a pull request, and auto-merges it when `brew style` and
`brew audit --strict` pass. Publishing a release is all that is required; no
manual formula editing.

## Formula conventions

Formulas build from the tagged source archive with `cargo install`, so the Rust
toolchain is a build-time dependency only. Run `brew style` locally before
opening a change to this tap.
