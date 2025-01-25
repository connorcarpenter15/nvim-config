-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- centers c-d and c-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--centers search function
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- allow changing and deleting without overriding current paste registers
-- in otherwords automatically delete or change to the void register
-- vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "D", '"_D', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "D", '"_D', { noremap = true, silent = true })
--
-- vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "c", '"_c', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "C", '"_C', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "C", '"_C', { noremap = true, silent = true })

-- to replace all of the words that the cursor is on
vim.keymap.set("n", "<leader>ci", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- select full file
vim.keymap.set("n", "<C-a>", [[gg<S-v>G]])

-- markdown preview
vim.keymap.set("n", "<leader>mp", [[:MarkdownPreview<CR>]], { silent = true, desc = "Markdown Preview" })

-- rmarkdown
vim.keymap.set("n", "<leader>rb", [[i```{r}<CR>```<esc>O]], { desc = "R Block" })
vim.keymap.set("n", "<leader>rkh", [[:w <cr>:RMarkdown <CR>]], { silent = true, desc = "HTML Knit RMD" })
vim.keymap.set(
  "n",
  "<leader>rkp",
  [[:w <cr>:RMarkdown pdf latex_engine="xelatex" <CR>]],
  { silent = true, desc = "PDF Knit RMD" }
)
vim.keymap.set(
  "n",
  "<leader>rh",
  [[i---<CR>title: ""<CR>author: "Connor Carpenter"<CR>date: "`r Sys.Date()`"<CR>output: html_document<CR>---<CR><CR>```{r setup, include=FALSE}<CR>knitr::opts_chunk$set(echo = TRUE)<CR>```<CR><CR>---<CR><CR>]],
  { desc = "R Header" }
)

-- undotree
vim.keymap.set("n", "<leader>ut", [[:UndotreeToggle <CR>]])
vim.keymap.set("n", "<leader>up", [[:Telescope undo <CR>]])

-- functions to hide and show lualine
vim.api.nvim_create_user_command("HideLualine", function()
  require("lualine").hide({ place = { "statusline" }, unhide = false })
end, {})

vim.api.nvim_create_user_command("ShowLualine", function()
  require("lualine").hide({ place = { "statusline" }, unhide = true })
end, {})

-- lualine commands
vim.keymap.set("n", "<leader>ub", [[:ShowLualine<CR>]], { silent = true, desc = "Show Lualine" })
vim.keymap.set("n", "<leader>uB", [[:HideLualine<CR>]], { silent = true, desc = "Hide Lualine" })

-- goyo (writing mode)
vim.keymap.set(
  "n",
  "<leader>ge",
  "[[:set linebreak<CR>:set wrap<CR>:HideLualine<CR>:Goyo<CR>:Goyo 60%<CR>]]",
  { silent = true, desc = "Enable Goyo" }
)

vim.keymap.set(
  "n",
  "<leader>gd",
  "[[:colorscheme tokyonight<CR>:ShowLualine<CR>:Goyo!<CR>]]",
  { silent = true, desc = "Disable Goyo" }
)

-- close buffer and window
vim.keymap.set("n", "<leader>ad", [[:bdelete <CR>]], { silent = true, desc = "Close buffer" })

-- better paste
-- vim.api.nvim_set_keymap("n", "p", "p<CMD>%s/\\r//<CR>", { desc = "Better paste", silent = true })

-- load dashboard with snacks.nvim
vim.keymap.set("n", "<leader>A", [[:lua Snacks.dashboard() <CR> ]], { silent = true, desc = "Load Dashboard" })

-- for SML
vim.keymap.set("n", "<leader>ms", [[:SMLReplStart <CR>]], { silent = true, desc = "SML Repl Start" })

-- for vimtex
vim.keymap.set("n", "<leader>vl", ":VimtexCompile<CR>")
vim.keymap.set("n", "<leader>vL", ":VimtexCompileSS<CR>")
vim.keymap.set("n", "<leader>vr", ":VimtexView<CR>")
vim.keymap.set("n", "<leader>vc", ":VimtexClean<CR>")
vim.keymap.set("n", "<leader>vC", ":VimtexCleanF<CR>")
vim.keymap.set("n", "<leader>vo", ":VimtexCompileOutput<CR>")
vim.keymap.set("n", "<leader>vk", ":VimtexStop<CR>")
vim.keymap.set("n", "<leader>vK", ":VimtexStopAll<CR>")
vim.keymap.set("n", "<leader>vt", ":VimtexTocOpen<CR>")
vim.keymap.set("n", "<leader>vT", ":VimtexTocToggle<CR>")
vim.keymap.set("n", "<leader>vi", ":VimtexInfo<CR>")
vim.keymap.set("n", "<leader>vI", ":VimtexInfoF<CR>")
vim.keymap.set("n", "<leader>vx", ":VimtexReload<CR>")
vim.keymap.set("n", "<leader>vX", ":VimtexReloadState<CR>")
vim.keymap.set("n", "<leader>vv", ":VimtexView<CR>")
vim.keymap.set("n", "<leader>ve", ":VimtexErrors<CR>")
vim.keymap.set("n", "<leader>va", ":VimtexContextMenu<CR>")
vim.keymap.set("n", "<leader>vg", ":VimtexStatus<CR>")
vim.keymap.set("n", "<leader>vq", ":VimtexLog<CR>")
vim.keymap.set("n", "<leader>vs", ":VimtexToggleMain<CR>")
vim.keymap.set("n", "<leader>vm", ":VimtexImapsList<CR>")

-- note: these will work in every filetype
local abbrevations = {
  { "dont", "don't" },
  { "shouldnt", "shouldn't" },
  { "cant", "can't" },
  { "wont", "won't" },
  { "wouldnt", "wouldn't" },
  { "seperate", "separate" },
  { "teh", "the" },
  { "thats", "that's" },
  { "itll", "it'll" },
}
for _, v in ipairs(abbrevations) do
  vim.cmd(string.format("iabbrev %s %s", v[1], v[2]))
end

vim.cmd("cnoreabbrev Set  set")
vim.cmd("cnoreabbrev Wq wq")
vim.cmd("cnoreabbrev WQ wq")
vim.cmd("cnoreabbrev X LazyExtras")

vim.api.nvim_create_user_command("W", "w", { nargs = 0 })
vim.api.nvim_create_user_command("E", "e", { nargs = 0 })
vim.api.nvim_create_user_command("Q", "qa", { nargs = 0 })
vim.api.nvim_create_user_command("Wq", "wq", { nargs = 0 })
vim.api.nvim_create_user_command("WQ", "wq", { nargs = 0 })

-- get word count of current file
vim.keymap.set("n", "<C-S-C>", function()
  vim.notify("Word Count: " .. vim.fn.wordcount().words, vim.log.levels.INFO, {
    title = "Word Count",
  })
end)

-- better scrolling with mouse
vim.keymap.set("n", "<ScrollWheelUp>", "<C-y>")
vim.keymap.set("n", "<ScrollWheelDown>", "<C-e>")
