require("computer.plugins-setup")
require("computer.core.options")
require("computer.core.keymaps")
require("computer.core.harpoon")
require("computer.core.colorscheme")
require("computer.plugins.nvim-tree")
require("computer.plugins.lualine")
require("computer.plugins.telescope")
require("computer.plugins.nvim-cmp")
require("computer.plugins.lsp.mason")
require("computer.plugins.lsp.lspconfig")
require("computer.plugins.lsp.null-ls")
require("computer.plugins.autopairs")
require("computer.plugins.treesitter")
require("computer.plugins.gitsigns")

-- init.lua

-- Load nvim-tree as a Lua module
--local tree = require("nvim-tree")
-- Define the keybinding to switch to the first directory
vim.api.nvim_set_keymap(
	"n",
	"<Leader>l",
	':lua require("nvim-tree").change_dir("~/.config/nvim/")<CR>',
	{ noremap = true, silent = true }
)

-- Define the keybinding to switch to the second directory
vim.api.nvim_set_keymap(
	"n",
	"<Leader>k",
	':lua require("nvim-tree").change_dir("~/my++/")<CR>',
	{ noremap = true, silent = true }
)
