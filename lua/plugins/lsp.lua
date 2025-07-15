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
      },
      setup = {
        jdtls = function()
          return true -- avoid duplicate servers
        end,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      vim.diagnostic.config({
        float = { border = "rounded" },
      })

      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable <C-k> insert mode keymap for focusing signature help window
      keys[#keys + 1] = { "<C-K>", false, mode = "i" }
      -- disable some other keymaps
      keys[#keys + 1] = { "<leader>cA", false, mode = "n" }
      keys[#keys + 1] = { "<leader>cc", false, mode = "n" }
      keys[#keys + 1] = { "<leader>cC", false, mode = "n" }
      keys[#keys + 1] = { "<leader>cR", false, mode = "n" }
      keys[#keys + 1] = { "<M-n>", false, mode = "n" }
      keys[#keys + 1] = { "<M-p>", false, mode = "n" }
      keys[#keys + 1] = { "]]", false, mode = "n" }
      keys[#keys + 1] = { "[[", false, mode = "n" }
      return opts
    end,
  },
}
