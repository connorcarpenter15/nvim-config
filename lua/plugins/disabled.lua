-- disables some plugins
return {
  {
    "nvim-neo-tree/neo-tree.nvim", -- mini files better
    enabled = false,
  },
  -- these two disable catpuccin
  {
    "catppuccin", -- i don't use this
    enabled = false,
  },
  {
    "iamcco/markdown-preview.nvim",
    enabled = false,
  },
  {
    "MagicDuck/grug-far.nvim",
    enabled = false,
  },

  -- {
  --   "LazyVim/LazyVim",
  --   opts = { colorscheme = "macro" },
  -- },
}
