return {
  "nvim-treesitter/nvim-treesitter",
  event = "LazyFile",
  opts = {
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "v<cr>",
        scope_incremental = "<tab>", -- usesless
        node_incremental = "<cr>",
        node_decremental = "<S-CR>",
      },
    },
    ensure_installed = {
      "bash",
      "csv",
      "yaml",
      "xml",
      "vimdoc",
      "css",
      "objdump",
    },
  },
}
