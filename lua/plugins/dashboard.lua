return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
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
  },
}
