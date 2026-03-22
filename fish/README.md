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
