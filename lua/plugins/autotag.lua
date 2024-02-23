return {
  "windwp/nvim-ts-autotag",
  event = "LazyFile",
  opts = {
    filetypes = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "rescript",
    },
  },
  setup = function(_, opts)
    require("nvim-ts-autotag").setup(opts)
  end,
}
