return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
          enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 20, -- how many suggestions should be shown in the list?
        },
        presets = {
          operators = true, -- adds help for operators like d, y, ...
          motions = true, -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = true, -- default bindings on <c-w>
          nav = true, -- misc bindings to work with windows
          z = true, -- bindings for folds, spelling and others prefixed with z
          g = true, -- bindings for prefixed with g
        },
      },
      defaults = {
        mode = { "n", "v" },
        { "g", desc = "+goto" },
        { "<Leader>b", desc = "+Buffer" },
        { "<Leader>c", desc = "+Code" },
        { "<Leader>f", desc = "+Find" },
        { "<Leader>gh", desc = "+Hunks" },
        { "<Leader>g", desc = "+Git" },
        { "<Leader>l", desc = "+Lazy" },
        { "<Leader>s", desc = "+Search" },
        { "<Leader><tab>", desc = "+Tabs" },
        { "<Leader>p", desc = "+Python" },
        { "<Leader>q", desc = "+Quit" },
        { "<Leader>r", desc = "+R" },
        { "<Leader>rk", desc = "RMD Knit" },
        { "<Leader>u", desc = "+UI" },
        { "<Leader>w", desc = "+Windows" },
        { "<Leader>x", desc = "+Trouble" },
        -- ["<Leader>Y"] = { name = "Yank History" },
        { "<LocalLeader>s", desc = "+Search" },
        { "]", desc = "+next" },
        { "[", desc = "+prev" },
      },
    }
  end,
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.add(opts.defaults)
  end,
}
