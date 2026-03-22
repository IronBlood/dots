## External tools

* [eza](https://github.com/eza-community/eza)

## Fisher

To install `fisher` from github:

```fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

To install `fisher` locally:

```fish
git clone https://github.com/jorgebucaran/fisher
set FISHER_PATH "$PWD/fisher" # or manually /path/to/fisher
source "$FISHER_PATH/functions/fisher.fish"
fisher install "$FISHER_PATH"
```

## Other plugins

- [`bass`](https://github.com/edc/bass)

## Environment Variables

### Rustup

To use a mirror for rustup, store this in `conf.d/private_rustup.fish`:

```fish
# Use a real mirror instead
set -gx RUSTUP_DIST_SERVER https://example.com
set -gx RUSTUP_UPDATE_ROOT https://example.com
```
