vim.g.snacks_animate = false

return {
  "folke/snacks.nvim",
  event = "VeryLazy",
  opts = {
    styles = {
      blame_line = { border = "single" },
      terminal = {
        wo = { winbar = "" },
      },
      notification_history = { border = "single" },
    },
    quickfile = {
      enabled = true,
    },
    statuscolumn = { enabled = false },
    dashboard = {
      enabled = not vim.g.started_by_firenvim,
      width = 45,
      preset = {
        keys = {
          { icon = "", key = "e", desc = "Explore", action = "<leader>e" },
          { icon = "󰱼", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = "", key = "g", desc = "Lazygit", action = "<leader>gg" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "p", desc = "Pick Session", action = ':lua require("persistence").select()' },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = ([[
          ┌─────┐┌─────┐┌─────┐┌──┐──┐┌──┐┌────────┐
          │  .  ││  .__││  .  ││  │  ││  ││  .  .  │
          └──┘──┘└─────┘└─────┘ '───' └──┘└──┘──┘──┘
        ]]):gsub("^%s+", ""):gsub("\n%s+", "\n"),
      },
      sections = {
        { section = "header", padding = 1 },
        { section = "keys", gap = 1, padding = 1 },
        -- { section = "startup" },
      },
    },
    notification = { sort = { "added" } },
    words = {
      enabled = true,
      modes = { "n" },
    },
    animate = { enabled = false, easing = "linear", fps = 120 },
    input = { enabled = true },
    terminal = { enabled = true },
    rename = { enabled = true },
    scratch = { enabled = false },
    git = { enabled = true },
    gitbrowse = { enabled = true },
    indent = {
      enabled = true,
      indent = { enabled = true },
      scope = { enabled = true },
      animate = { enabled = false },
    },
    zen = { enabled = true },
  },
  keys = {
    {
      "<C-q>",
      function()
        Snacks.terminal.toggle()
      end,
      desc = "Toggle Terminal",
      mode = { "n", "t" },
    },
    {
      "<leader>tm",
      function()
        Snacks.terminal.toggle("zsh", {
          cwd = vim.fn.getcwd(),
          env = { TERM = "xterm-256color" },
          win = {
            relative = "editor",
            width = 0.8,
            height = 0.8,
            border = "rounded",
            padding = { 4, 1, 1, 1 }, -- Top, right, bottom, left padding
          },
        })
      end,
      desc = "Toggle Terminal (float)",
      mode = { "n", "t" },
    },
    -- <C-.>, <C-S-/>
    {
      "<leader>z",
      function()
        Snacks.zen()
      end,
      desc = "Toggle Zen Mode",
    },
    {
      "<leader>Z",
      function()
        Snacks.zen.zoom()
      end,
      desc = "Toggle Zoom",
    },
  },
}
