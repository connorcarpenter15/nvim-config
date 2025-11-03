return {
  {
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
        ["*"] = {
          keys = {
            { "<C-K>", false, mode = "i" },
            { "<leader>cA", false, mode = "n" },
            { "<leader>cc", false, mode = "n" },
            { "<leader>cC", false, mode = "n" },
            { "<leader>cR", false, mode = "n" },
            { "<M-n>", false, mode = "n" },
            { "<M-p>", false, mode = "n" },
            { "]]", false, mode = "n" },
            { "[[", false, mode = "n" },
          },
        },
      },
      setup = {
        jdtls = function()
          return true -- avoid duplicate servers
        end,
      },
    },
  },
}
