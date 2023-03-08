# NeoVim config for web developers

This is a very simple NeoVim configuration primarily aimed towards web
development using languages such as JavaScript, TypeScript, HTML, and CSS.

## Prerequisites 

This config depends on [`AppearanceNotifier`](https://github.com/nizadin/AppearanceNotifier)
(originally cloned from [jesse-c/AppearanceNotifier](https://github.com/jesse-c/AppearanceNotifier))
to listen for OS color scheme changes in order to update Vim's `vim.o.background`
option accordingly, which in turn results to color theme change in the NeoVim
itself (if the color scheme supports dark and light variants based on the
`vim.o.background` option).

Make sure to clone the repo locally and build the `AppearanceNotifier` before
starting the NeoVim. Follow the instructions in the repo on how to build the
program and how to add it to the `$PATH`.

`AppearanceNotifier` is for macOS only, so auto color scheme switching will not
work on other operating systems.

## Getting started

If you want to try using this configuration, make sure to create a backup copy
of your current setup first:
```bash
# required
mv ~/.config/nvim ~/.config/nvim.bak

# optional but recommended
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

Then, clone the repo:
```bash
git clone https://github.com/nizadin/nvim.git ~/.config/nvim
```

Have fun!


