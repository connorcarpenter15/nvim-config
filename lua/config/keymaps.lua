-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

vim.api.nvim_create_user_command("FloatingTerm", function()
  Util.float_term()
end, {})

-- centers c-d and c-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--centers search function
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- python
vim.keymap.set("n", "<leader>py", [[:set autochdir <CR> :FloatingTerm <CR> python3 <C-\><C-n>"#pi <CR>]])
vim.keymap.set("n", "<leader>fp", [[:w <CR> :!black % <CR><CR>]])

-- c++
vim.keymap.set(
  "n",
  "<leader>cp",
  [[:set autochdir <CR> :FloatingTerm <CR> g++ -o <C-\><C-n>"#pi<BS><BS><BS><BS> <C-\><C-n>"#pi && ./<C-\><C-n>"#pi<BS><BS><BS><BS> <CR>]]
)

-- java
vim.keymap.set("n", "<leader>jj", [[:cd %:h<cr> :w<CR>:!javac %<cr> :!java %:r<cr>]])

-- telescope things
vim.keymap.set("n", "<leader>fc", [[:Telescope colorscheme<cr>]])

-- TODO change directories
-- vim.keymap.set("n", "<leader>cd", [[:cd %:h<cr>]])
-- vim.keymap.set("n", "<leader>cu", [[:cd ..<cr>]])

-- to replace all of the words that the cursor is on
vim.keymap.set("n", "<leader>cs", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--open terminal buffer
vim.keymap.set("n", "<leader>tm", [[:term <cr>]])

-- select full file
vim.keymap.set("n", "<C-a>", [[gg<S-v>G]])

-- rmarkdown
vim.keymap.set("n", "<leader>rb", [[i```{r}<CR>```<esc>O]])
vim.keymap.set("n", "<leader>rk", [[:w <CR> :RMarkdown <CR> :!open %:r.html <CR>]])

-- undotree
vim.keymap.set("n", "<leader>ut", [[:UndotreeToggle <CR>]])
vim.keymap.set("n", "<leader>up", [[:Telescope undo <CR>]])

-- lsp install
vim.keymap.set("n", "<leader>il", [[:LspInstall <CR>]])
