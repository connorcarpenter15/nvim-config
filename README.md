# Introduction

This repository hosts my Neovim configuration for macOS. It is based on the
LazyVim starter distribution, and using
[lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

# Install and Setup

This config is only maintained for the latest stable Neovim release. No effort
is spent on backwards compatibility. Information on how to install Neovim can
be found [here](https://github.com/neovim/neovim/wiki/Installing-Neovim). Once
you can run the `nvim` command, clone this repo into your config path
(`~/.config/nvim`).

# Features

This config uses most of the built-in features of LazyVim. Visit the [LazyVim
docs](https://www.lazyvim.org/) for more information.

Here is a list of all my custom features:

- Enable supertab for completion and snippets through [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Add fzf-native for telescope with [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- Support for RMarkdown using [vim-pandoc/vim-rmarkdown](https://github.com/vim-pandoc/vim-rmarkdown)
