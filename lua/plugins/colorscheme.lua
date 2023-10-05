return {
  -- add catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- add tokyonight
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Configure LazyVim to load catpuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
