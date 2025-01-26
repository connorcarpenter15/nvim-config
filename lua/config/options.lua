-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt

opt.autowrite = true -- Enable auto writes
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.conceallevel = 3 -- Hide * markup for bold and italics
opt.cursorline = false
opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.wrap = false
opt.incsearch = true
opt.scrolloff = 8
opt.relativenumber = true
opt.numberwidth = 1
vim.g.snacks_animate = false
opt.showtabline = 0
