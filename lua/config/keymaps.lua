-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- centers c-d and c-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--centers search function
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- --------------------------------------- WINDOWS BUFFERS AND TABS --------------------------------

-- tab navigation
vim.keymap.set("n", "<S-h>", "<cmd>tabprev<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "Next Tab" })

vim.keymap.set("n", "<leader>q", "<C-W>c", { desc = "Close Window", silent = true })

-- splits
vim.keymap.set("n", "|", "<cmd>vsplit<cr>", { remap = true, silent = true, desc = "Vertical Split" })
vim.keymap.set("n", "_", "<cmd>split<cr>", { remap = true, silent = true, desc = "Vertical Split" })

vim.keymap.set("n", "<leader>o", "<cmd>silent! !open %<cr>", { desc = "Open Buffer in System Viewer" })

-- --------------------------------- TAB RELATED STUFF --------------------------------------------

-- vim.keymap.set("n", "<C-space>", "<cmd>$tabnew<cr>")
vim.keymap.set("n", "<C-space>", function()
  if vim.fn.tabpagenr("$") >= 5 then
    vim.notify("Thats a lotta tabs...", vim.log.levels.WARN, { title = "Tabs" })
  else
    vim.cmd("tabe")
  end
end)
-- vim.keymap.set("n", "<leader>1", "<cmd>silent! tabn 1<cr>", { silent = true, desc = "Tab 1" })
-- vim.keymap.set("n", "<leader>2", "<cmd>silent! tabn 2<cr>", { silent = true, desc = "Tab 2" })
-- vim.keymap.set("n", "<leader>3", "<cmd>silent! tabn 3<cr>", { silent = true, desc = "Tab 3" })
-- vim.keymap.set("n", "<leader>4", "<cmd>silent! tabn 4<cr>", { silent = true, desc = "Tab 4" })
-- vim.keymap.set("n", "<leader>5", "<cmd>silent! tabn 5<cr>", { silent = true, desc = "Tab 5" })

-- ------------------------------------------------------------------------------------------------

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

-- close buffer and window
vim.keymap.set("n", "<leader>ad", [[:bdelete <CR>]], { silent = true, desc = "Close buffer" })

-- better paste
-- vim.api.nvim_set_keymap("n", "p", "p<CMD>%s/\\r//<CR>", { desc = "Better paste", silent = true })

-- load dashboard with snacks.nvim
vim.keymap.set("n", "<leader>A", [[:lua Snacks.dashboard() <CR> ]], { silent = true, desc = "Load Dashboard" })

-- for SML
vim.keymap.set("n", "<leader>rs", [[:SMLReplStart <CR>]], { silent = true, desc = "SML Repl Start" })

-- --------------------------------- VIMTEX --------------------------------------------
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

-- ------------------------------------- ABBREVIATIONS --------------------------------------------

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

-- ------------------------------------- CMU SHARK --------------------------------------------

vim.keymap.set("n", "<leader>sc", function()
  local filename = vim.fn.expand("%")
  local remote_host = "ccarpent@sandshark.ics.cs.cmu.edu"

  -- Extract the directory name from the local path
  local local_dir = vim.fn.fnamemodify(filename, ":h")
  -- local dir_name = vim.fn.fnamemodify(local_dir, ":t")
  local dir_name = "malloclab"
  local base_name = vim.fn.fnamemodify(filename, ":t")

  -- Construct the remote path
  local remote_path = "~/private/" .. dir_name .. "/" .. base_name

  local password = vim.env.CMU_REMOTE_PASSWORD

  if password then
    local command = "sshpass -p '" .. password .. "' rsync " .. filename .. " " .. remote_host .. ":" .. remote_path
    require("snacks").terminal.open(command)
  else
    vim.notify("Unable to sync to remote: password unknown")
  end

  vim.notify("File synced to CMU Shark")
end, { desc = "CMU Shark Copy", silent = true })

---------------------------
-----== NORMAL MODE ==-----
---------------------------

-- don't let cursor fly around when using J
vim.keymap.set("n", "J", "mzJ`z<cmd>delm z<CR>", { silent = true })
vim.keymap.set("n", "\\j", "j", { remap = false })
vim.keymap.set("n", "\\k", "k", { remap = false })

-- follow links!
vim.keymap.set("n", "<CR>", function()
  require("custom.utils").follow_link()
end, { noremap = true, silent = true, desc = "Follow link" })
vim.keymap.set("n", "<S-CR>", function()
  require("custom.utils").follow_link(true)
end, { noremap = true, silent = true, desc = "Follow link in new tab" })

-- select last changed/yanked text
vim.keymap.set(
  "n",
  "gp",
  '"`[" . strpart(getregtype(), 0, 1) . "`]"',
  { expr = true, replace_keycodes = false, desc = "Select last changed/yanked text" }
)

-- apply last created macro over selected region
vim.keymap.set("x", "Q", ":norm @@<cr>", { desc = "Play Q macro", silent = true })

-- duplicate lines
vim.keymap.set("n", "yc", "yygccp", { remap = true, desc = "Copy and comment current line" })

-- create a new tab
vim.keymap.set("n", "<C-space>", "<cmd>tabe<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<C-CR>", "<cmd>tabe<cr>", { desc = "New Tab" })

-- close tabs/all buffers
vim.keymap.set("n", "<leader>Q", "<cmd>bufdo bd<cr>", { desc = "Close all buffers", silent = true })
vim.keymap.set("n", "<leader><Tab>q", "<cmd>tabclose<cr>", { desc = "Close tab" })

-- exclude "desc" so they don't populate which-key
vim.keymap.set("n", "<leader>1", "<cmd>silent! tabn 1<cr>", { silent = true })
vim.keymap.set("n", "<leader>2", "<cmd>silent! tabn 2<cr>", { silent = true })
vim.keymap.set("n", "<leader>3", "<cmd>silent! tabn 3<cr>", { silent = true })
vim.keymap.set("n", "<leader>4", "<cmd>silent! tabn 4<cr>", { silent = true })
vim.keymap.set("n", "<leader>5", "<cmd>silent! tabn 5<cr>", { silent = true })
vim.keymap.set("n", "<leader>6", "<cmd>silent! tabn 6<cr>", { silent = true })
vim.keymap.set("n", "<leader>7", "<cmd>silent! tabn 7<cr>", { silent = true })
vim.keymap.set("n", "<leader>8", "<cmd>silent! tabn 8<cr>", { silent = true })
vim.keymap.set("n", "<leader>9", "<cmd>silent! tabn 9<cr>", { silent = true })

-- splits/windows
vim.keymap.set("n", "<leader>wr", "<C-w>r", { desc = "Rotate window" })
vim.keymap.set("n", "|", "<cmd>vsplit<cr>", { remap = true, silent = true, desc = "Vertical split" })
vim.keymap.set("n", "_", "<cmd>split<cr>", { remap = true, silent = true, desc = "Horizontal split" })

-- z= with vim.ui.select() (selection UI)
-- (you can also type a number to pick the nth suggestion)
local spell_on_choice = vim.schedule_wrap(function(_, idx)
  if type(idx) == "number" then
    vim.cmd.normal({ idx .. "z=", bang = true })
  end
end)
local spell_select = function()
  if vim.v.count > 0 then
    spell_on_choice(nil, vim.v.count)
    return
  end
  local cword = vim.fn.expand("<cword>")
  vim.ui.select(vim.fn.spellsuggest(cword, vim.o.lines), { prompt = "Change " .. cword .. " to:" }, spell_on_choice)
end
vim.keymap.set("n", "z=", spell_select)

-- auto pick the first spelling suggestion and apply it
vim.keymap.set("n", "<leader>fs", "1z=", { remap = false, silent = true, desc = "Fix spelling" })

vim.keymap.set("n", "<leader>R", function()
  local plugins = require("lazy").plugins()
  local plugin_names = {}
  for _, plugin in ipairs(plugins) do
    table.insert(plugin_names, plugin.name)
  end

  vim.ui.select(plugin_names, {
    title = "Reload plugin",
  }, function(selected)
    require("lazy").reload({ plugins = { selected } })
  end)
end, { desc = "Reload plugin" })

-----== VISUAL MODE ==-----

-- search within selection by default when using / in visual mode
vim.keymap.set("x", "/", "<Esc>/\\%V")

-- go to visual end of line (unless wrap is disabled)
vim.keymap.set({ "n", "v", "o" }, "E", function()
  if vim.opt.wrap:get() then
    vim.cmd("normal! g$")
  else
    vim.cmd("normal! $")
  end
end, { silent = true })
vim.keymap.set({ "n", "v", "o" }, "B", function()
  if vim.opt.wrap:get() then
    vim.cmd("normal! g^")
  else
    vim.cmd("normal! ^")
  end
end, { silent = true })

vim.keymap.set("x", "<bs>", "d", { remap = true })

---------------------------
-----== INSERT MODE ==-----
---------------------------

vim.keymap.set("i", "<C-Del>", "<C-o>de") -- traditional functionality of <C-delete>
vim.keymap.set("i", "<M-BS>", "<C-u>") -- clean line (windows keymap)
vim.keymap.set("i", "<C-BS>", "<C-w>") -- clean line (windows keymap)
vim.keymap.set("i", "<D-BS>", "<C-u>") -- clean line (windows keymap)
vim.keymap.set("s", "<BS>", "<C-O>c", { remap = true }) -- backspace to clear snippets

-- in insert mode auto-correct the last misspelled word
vim.keymap.set("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { desc = "Auto correct", silent = true })

-- completion cycling in command mode
vim.keymap.set({ "c", "i" }, "<C-j>", "<C-n>", { remap = true })
vim.keymap.set({ "c", "i" }, "<C-k>", "<C-p>", { remap = true })
vim.keymap.set("c", "<C-a>", "<Home>", { remap = true })
vim.keymap.set("c", "<C-e>", "<End>", { remap = true })

-----------------------------
-----== TERMINAL MODE ==-----
-----------------------------

-- paste easier in terminal
vim.keymap.set("t", "<C-v>", "<c-\\><c-n><cmd>norm p<Cr>a", { remap = true })
vim.keymap.set("t", "<C-v>", "<c-\\><c-n><cmd>norm p<Cr>a", { remap = true })

--------------------------
-----== MANY MODES ==-----
--------------------------

vim.keymap.set("i", "<C-.>", "<C-t>")
vim.keymap.set("i", "<C-,>", "<C-d>")
vim.keymap.set({ "n", "x" }, "<C-.>", ">>", { remap = true })
vim.keymap.set({ "n", "x" }, "<C-,>", "<<", { remap = true })

-- for macos (vscode native)
vim.keymap.set("n", "<D-]>", ">>")
vim.keymap.set("i", "<D-]>", "<C-t>")
vim.keymap.set("v", "<D-]>", ">gv")
vim.keymap.set("n", "<D-[>", "<<")
vim.keymap.set("i", "<D-[>", "<C-d>")
vim.keymap.set("v", "<D-[>", "<gv")

-- for windows
vim.keymap.set("n", "<M-]>", ">>")
vim.keymap.set("i", "<M-]>", "<C-t>")
vim.keymap.set("v", "<M-]>", ">gv")
vim.keymap.set("n", "<M-[>", "<<")
vim.keymap.set("i", "<M-[>", "<C-d>")
vim.keymap.set("v", "<M-[>", "<gv")

-- follow links better
vim.keymap.set({ "n", "x" }, "gx", function()
  vim.ui.open(vim.fn.expand("<cfile>"))
end, { silent = true })

-- increment and decrement with plus and minus (since i override <c-a>)
vim.keymap.set({ "n", "v" }, "+", "<c-a>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "-", "<C-x>", { noremap = true, silent = true })

-- : (easier to hit when using in combination with <C-k>)
vim.keymap.set({ "n", "v" }, "<C-;>", ":", { remap = true, silent = false, desc = "Commmand mode" })

-- allow changing and deleting without overriding current paste registers
-- in other words automatically delete or change to the void register
vim.keymap.set({ "n", "v" }, "D", '"_D', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "d", '"_d', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "C", '"_C', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "c", '"_c', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "x", '"_x', { noremap = true, silent = true })
vim.keymap.set("v", "p", '"_dp', { noremap = true, silent = true })
vim.keymap.set("n", "X", "0D", { remap = true, desc = "Clear line", silent = true })

-- paste from system clipboard
vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true, silent = true })
vim.keymap.set("c", "<C-v>", "<C-r>+")

-- delete to register
vim.keymap.set("v", "<leader>D", '"+d', { desc = "Delete and copy", silent = true, remap = false })
vim.keymap.set("n", "<leader>D", '"+dd', { desc = "Delete and copy", silent = true })

-- move lines of code with <C-n> and <C-p> (since M-j/k are taken by window manager)
vim.keymap.set({ "n", "x" }, "<C-p>", "<M-k>", { remap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<C-n>", "<M-j>", { remap = true, silent = true })

vim.keymap.set({ "n", "i" }, "<M-z>", function()
  vim.wo.wrap = not vim.wo.wrap
end, { desc = "Toggle Wrap" })

vim.keymap.set({ "n", "v" }, "go", "%", { desc = "Go to other pair" })

-----------------------
-----== SPECIAL ==-----
-----------------------

-- default mappings, just removing description so they're hidden from whichkey
vim.keymap.set("x", "Y", "y$")
vim.keymap.set("x", "&", ":&&<CR>")

-- Executes shell command from neovim making file executable
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make executable" })

vim.keymap.set("n", "<leader>o", function()
  if vim.fn.executable("wsl-open") == 1 then
    vim.cmd([[silent! !wsl-open %]])
  else
    vim.cmd([[silent! !open %]])
  end
end, { desc = "Open buffer in system viewer" })

-- requires mini.surround
vim.keymap.set("x", '"', "gsaq", { remap = true, desc = "Surround Selection with Quotes" })
vim.keymap.set("x", "'", "gsa'", { remap = true, desc = "Surround Selection with Quotes" })

-- better scrolling with mouse
vim.keymap.set("n", "<ScrollWheelUp>", "<C-y>")
vim.keymap.set("n", "<ScrollWheelDown>", "<C-e>")
vim.keymap.set("n", "<M-ScrollWheelUp>", "zh") -- left scroll
vim.keymap.set("n", "<M-ScrollWheelDown>", "zl") -- right scroll
vim.keymap.set("n", "<ScrollWheelLeft>", "zh") -- left scroll
vim.keymap.set("n", "<ScrollWheelRight>", "zl") -- right scroll

vim.keymap.set("n", "zk", "<C-y>", { desc = "Scroll viewport up", remap = true })
vim.keymap.set("n", "zj", "<C-e>", { desc = "Scroll viewport down", remap = true })

-- media control buttons (don't send keypresses)
vim.keymap.set({ "i", "n" }, "", "<Nop>") -- volume up
vim.keymap.set({ "i", "n" }, "", "<Nop>") -- volume down
vim.keymap.set({ "i", "n" }, "", "<Nop>") -- mute
vim.keymap.set({ "i", "n" }, "", "<Nop>") -- mute
vim.keymap.set({ "i", "n" }, "", "<Nop>") -- prev
vim.keymap.set({ "i", "n" }, "", "<Nop>") -- skip

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

vim.cmd("cnoreabbrev Set set")
vim.api.nvim_create_user_command("W", "w", { nargs = 0 })
vim.api.nvim_create_user_command("E", "e", { nargs = 0 })
vim.api.nvim_create_user_command("Q", "qa", { nargs = 0 })
vim.api.nvim_create_user_command("Wq", "wq", { nargs = 0 })
vim.api.nvim_create_user_command("WQ", "wq", { nargs = 0 })
vim.api.nvim_create_user_command("X", "LazyExtras", { nargs = 0 })

-- force save as sudo, good for readonly files
vim.api.nvim_create_user_command("WF", "silent! w !sudo tee %", { nargs = 0, desc = "Force save" })

-- use for formatting lines with markdown
vim.cmd("cnoreabbrev F !prettier -w --parser=markdown")

-- clean ^Ms (windows newlines created when pasting into WSL from windows)
vim.api.nvim_create_user_command("Clean", "silent! %s/\r//g", { nargs = 0, desc = "Clean newline characters" })

-- save without removing trailing whitespace
vim.keymap.set({ "n", "i" }, "<C-D-S>", "<cmd>noa up<CR>", { remap = false, desc = "Save (noa)", silent = true })
vim.keymap.set({ "n", "i" }, "<D-s>", "<cmd>noa up<CR>", { remap = false, desc = "Save (noa)", silent = true })
vim.keymap.set("n", "<M-C-S>", "<cmd>noa up<CR>", { remap = false, desc = "Save (noa)", silent = true })

-- get word count of current file
vim.keymap.set("n", "<C-S-C>", function()
  vim.notify(
    "Word Count: " .. vim.fn.wordcount().words .. "\nChar Count: " .. vim.fn.wordcount().chars,
    vim.log.levels.INFO
  )
end)

-- Define a command to get word and character count of the current file
vim.api.nvim_create_user_command("Wordcount", function()
  vim.notify(
    "Word Count: " .. vim.fn.wordcount().words .. "\nChar Count: " .. vim.fn.wordcount().chars,
    vim.log.levels.INFO
  )
end, { desc = "Display word and character count of the current file" })

-- setup vscode overrides
if not vim.g.vscode then
  vim.keymap.set("n", "<S-h>", "<cmd>tabprev<cr>", { desc = "Previous tab" })
  vim.keymap.set("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "Next tab" })

  vim.keymap.set("n", "<leader>q", function()
    -- stylua: ignore
    local close_window = function() vim.cmd("close") end
    local ok, _ = pcall(close_window)
    if not ok then
      pcall(vim.cmd("bdelete"))
    end
  end, { desc = "Close window", silent = true })
else
  vim.cmd([[
    function! s:split(...) abort
      let direction = a:1
      let file = exists('a:2') ? a:2 : ''
      call VSCodeCall(direction ==# 'h' ? 'workbench.action.splitEditorDown' : 'workbench.action.splitEditorRight')
      if !empty(file)
        call VSCodeExtensionNz.otify('open-file', expand(file), 'all')
      endif
    endfunction

    nnoremap _ <Cmd>call <SID>split('h')<CR>
    nnoremap \| <Cmd>call <SID>split('v')<CR>
  ]])

  local vscode = require("vscode")
  vim.notify = vscode.notify

  vim.keymap.del("n", "<leader>qq")
  vim.keymap.set(
    "n",
    "<leader>q",
    "<cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>",
    { silent = true }
  )
end

-- vim.keymap.set({ "n", "t" }, "<C-S-H>", "<cmd>wincmd h<cr>")
-- vim.keymap.set({ "n", "t" }, "<S-NL>", "<cmd>wincmd j<cr>")
-- vim.keymap.set({ "n", "t" }, "<C-S-K>", "<cmd>wincmd k<cr>")
-- vim.keymap.set({ "n", "t" }, "<C-S-L>", "<cmd>wincmd l<cr>")

-- -- clean ^Ms (windows newlines created when pasting into WSL from winddows)
-- vim.keymap.set("n", "<C-S-S>", function()
--   vim.cmd([[silent! %s/\r//g]])
--   vim.notify("Cleaned all newline characters!", vim.log.levels.INFO, { title = "File Saved" })
-- end, { remap = false, desc = "Clean ^M", silent = true })
