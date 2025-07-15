return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
        width = 0.8,
        height = 0.8,
      },
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "r-languageserver",
        "black",
        "clangd",
        "clang-format",
        -- "css-lsp",
        -- "deno",
        "html-lsp",
        "json-lsp",
        "ruff",
        "prettier",
        "lua-language-server",
      },
    },
  },
}
