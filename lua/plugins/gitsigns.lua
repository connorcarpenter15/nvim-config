return {
  "ellisonleao/dotenv.nvim",
  lazy = false,
  config = function()
    local dotenv_path = vim.fn.stdpath("config") -- This resolves to ~/.config/nvim

    require("dotenv").setup({
      path = dotenv_path, -- Tell dotenv.nvim to look in ~/.config/nvim
      file_name = ".env", -- Still specify the file name if it's '.env' (this is default)
      enable_on_load = true, -- Default, but good to be explicit
      -- verbose = true, -- Uncomment for debugging output from dotenv.nvim
    })
  end,
}
