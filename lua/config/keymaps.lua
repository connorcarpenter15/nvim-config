-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

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

-- python
vim.keymap.set("n", "<leader>fp", [[:w <CR> :!black % <CR><CR>]])

-- telescope things
vim.keymap.set("n", "<leader>fc", [[:Telescope colorscheme<cr>]])

-- TODO change directories
-- vim.keymap.set("n", "<leader>cd", [[:cd %:h<cr>]])
-- vim.keymap.set("n", "<leader>cu", [[:cd ..<cr>]])

-- to replace all of the words that the cursor is on
vim.keymap.set("n", "<leader>ci", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--open terminal buffer
vim.keymap.set("n", "<leader>tm", [[:term <cr>]])

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
