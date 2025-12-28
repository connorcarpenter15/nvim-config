# Neovim Configuration (macOS)

This repository contains my personal Neovim configuration, tailored for macOS
and based on the [LazyVim](https://www.lazyvim.org/) starter distribution.
Plugin management is handled by
[lazy.nvim](https://github.com/folke/lazy.nvim).

## Requirements

- **Neovim**: Latest stable release (see [install instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim))
- **macOS** (tested), but most features are cross-platform
- **git** (for plugin management)
- Optional: [zoxide](https://github.com/ajeetdsouza/zoxide), [delta](https://github.com/dandavison/delta), [deno](https://deno.com/), etc. for enhanced features

## Installation

1. **Backup your current config** (if any):

   ```sh
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

1. **Clone this repository**:

   ```sh
   git clone https://github.com/yourusername/your-nvim-config.git ~/.config/nvim
   ```

1. **Start Neovim**:

   ```sh
   nvim
   ```

   Plugins will be installed automatically on first launch.

## Features

- **LazyVim**: Modern Neovim starter template with sensible defaults
- **Plugin Management**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Custom Colorscheme**: `macro` (see `colors/macro.lua`)
- **Tabline/Bufferline**: Custom tabline and bufferline integration
- **Completion**: [blink.cmp](https://github.com/saghen/blink.cmp) for fast, fuzzy completion
- **LSP**: Preconfigured with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and Mason for language servers
- **Formatting**: [conform.nvim](https://github.com/stevearc/conform.nvim) for auto-formatting on save
- **Commenting**: [Comment.nvim](https://github.com/numToStr/Comment.nvim) with custom insert-mode support
- **File Explorer**: [mini.files](https://github.com/nvim-mini/mini.files) as the default file explorer
- **Fuzzy Finder**: [snacks.nvim](https://github.com/folke/snacks.nvim) for pickers, dashboard, and more
- **Markdown**: Enhanced support with [markdown-plus.nvim](https://github.com/yousefhadder/markdown-plus.nvim) and [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- **RMarkdown**: Syntax and commands via [vim-pandoc/vim-rmarkdown](https://github.com/vim-pandoc/vim-rmarkdown)
- **Code Runner**: [code_runner.nvim](https://github.com/CRAG666/code_runner.nvim) for running code in various languages
- **Git Integration**: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- **Indent Guides**: [snacks.nvim](https://github.com/folke/snacks.nvim) indent and scope features
- **Terminal**: Integrated floating and split terminals
- **Session Management**: [persistence.nvim](https://github.com/folke/persistence.nvim)
- **AI/Code Assistant**: [codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim) with Copilot backend
- **Other**: Treesitter, mini.move, mini.surround, snacks dashboard, and more

## Custom Keymaps

- `<leader>e` — Open file explorer (mini.files)
- `<leader>k` — Open CodeCompanion AI chat
- `<leader>mp` — Markdown preview
- `<leader>rb` — Insert R code block (RMarkdown)
- `<leader>ut` — Toggle undotree
- `<C-d>`, `<C-u>` — Scroll and center
- `<C-space>` — New tab
- `<leader>q` — Close window
- `<leader>o` — Open current file in system viewer
- ...and many more (see `lua/config/keymaps.lua`)

## Customization

- **Colorscheme**: Set in `init.lua` and `colors/macro.lua`
- **Plugins**: Managed in `lua/plugins/`
- **Autocommands**: See `lua/config/autocmds.lua`
- **Options**: See `lua/config/options.lua`

## Notes

- This config is only maintained for the latest stable Neovim release.
- Some plugins and features are macOS-specific (e.g., system open commands).
- For a full list of plugins, see `lazy-lock.json` or browse `lua/plugins/`.

## License

MIT License. See [LICENSE](LICENSE) for details.

---

For questions or suggestions, open an issue or PR!

```

Let me know if you want to add usage examples, screenshots, or more plugin details.
```
