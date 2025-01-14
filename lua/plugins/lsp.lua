vim.diagnostic.config({
  float = { border = "rounded" },
})

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
  },
  opts = {
    { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
    -- make sure mason installs the server
    servers = {
      r_language_server = { enabled = false },
      clangd = {},
      ruff_lsp = {},
      pyright = { enabled = true },
      -- julia_lsp = {},
    },
    setup = {
      jdtls = function()
        return true -- avoid duplicate servers
      end,
    },
  },
}
