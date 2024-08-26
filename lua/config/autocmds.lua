-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "FileType", "BufRead" }, {
  pattern = { "*.Rmd", "*.rmd" },
  callback = function()
    vim.cmd([[set ft=rmd]])
  end,
})

-- remove all trailing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    pcall(function()
      vim.cmd([[%s/\s\+$//e]])
    end)
    vim.fn.setpos(".", save_cursor)
  end,
})

-- rewrite vimtex keymaps
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "tex" },
  callback = function()
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
  end,
})
