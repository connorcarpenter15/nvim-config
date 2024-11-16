return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "r-languageserver",
        "black",
        "clangd",
        "clang-format",
        "css-lsp",
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
