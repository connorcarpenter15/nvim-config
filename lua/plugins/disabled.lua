-- disables some plugins
return {
  {
    "nvim-neo-tree/neo-tree.nvim", -- mini files better
    enabled = false,
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  -- these two disable catpuccin
  {
    "catppuccin", -- i don't use this
    enabled = false,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = { colorscheme = "macro" },
  -- },
}
