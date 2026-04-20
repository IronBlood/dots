# Notes

## Emulator Dim Test

At the moment WezTerm render dim / faint text differently comparing to other emulators by default, here is the command to test:

```bash
echo -e "normal \x1b[32m✓\x1b[39m \x1b[2mdim\x1b[22m"
```

In alacritty / ghostty / kitty, `dim` is rendered in a darker, normal font weight style, while in WezTerm it's brighter, thinner.
