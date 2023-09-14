-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- centers c-d and c-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--centers search function
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- python
vim.keymap.set("n", "<leader>pp", [[:w<CR>:!python3 %<cr>]])
vim.keymap.set("n", "<leader>fp", [[:w <CR> :!black % <CR><CR>]])

-- java
vim.keymap.set("n", "<leader>jj", [[:cd %:h<cr> :w<CR>:!javac %<cr> :!java %:r<cr>]])

-- telescope things
vim.keymap.set("n", "<leader>fc", [[:Telescope colorscheme<cr>]])

-- change directories
vim.keymap.set("n", "<leader>cd", [[:cd %:h<cr>]])
vim.keymap.set("n", "<leader>cu", [[:cd ..<cr>]])

-- this is for (leader + s) changes all instances of the word the cursor is
-- ontop of to the next word typed
vim.keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- c++
vim.keymap.set("n", "<leader>cp", [[:w <CR>:!g++ % -o %:r && %:r<CR>]])
vim.keymap.set("n", "<leader>cpt", [[:w <CR>!g++ % -o %:r && %:r<CR>]])

--open terminal buffer
vim.keymap.set("n", "<leader>tm", [[:term <cr>]])

-- select full file
vim.keymap.set("n", "<C-a>", [[gg<S-v>G]])

-- rmd command
vim.keymap.set("n", "<leader>rb", [[i```{r}<CR>```<esc>O]])