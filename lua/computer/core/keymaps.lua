-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
vim.opt.fillchars:append({ eob = " " })
----------------------
-- General Keymaps
---------------------

-- to move between windows <Ctrl-H>&<Ctrl-L>
-- tree view to list specific directory <Ctrl-]>

-- using <leader>cd the current working directory gets updated to newest working directory you are on
keymap.set("n", "<Leader>cd", ":cd %:p:h<CR>:pwd<CR>", { silent = true })
-- clear search highlights
keymap.set("n", "<leader>xh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')
-- Change keybinding for <C-u> in normal mode to <C-u>zz
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next ab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<leader>cr", "<Cmd>!g++   -o %:r % && ./%:r<CR>", { noremap = true, silent = true })

-- Set a keybinding for compiling and running a C++ file
--keymap.set("n", "<leader>cr", "<Cmd>!g++ -o %:r % && ./%:r<CR>", { noremap = true, silent = true })
-- Define key mapping for compilation and execution in a terminal
keymap.set("n", "<leader>cs", ":vert terminal g++  -o %:r % && ./%:r<CR>", { noremap = true, silent = true })

-- Define the keybinding to switch to the first directory
vim.api.nvim_set_keymap("n", "<Leader>1", ':lua vim.cmd("cd ~/.config/nvim/")<CR>', { silent = true })

-- Define the keybinding to switch to the second directory
vim.api.nvim_set_keymap("n", "<Leader>2", ':lua vim.cmd("cd ~/my++/")<CR>', { silent = true })

----------------------
-- Plugin Keybinds
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
