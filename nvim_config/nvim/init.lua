-- General Settings
vim.opt.number = true -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.mouse = "a" -- Enable mouse
vim.opt.ignorecase = true -- Ignore case in search
vim.opt.smartcase = true -- Override ignore case when search includes uppercase
vim.opt.hlsearch = true -- Highlight search results
vim.opt.wrap = false -- Don't wrap lines
vim.opt.tabstop = 2 -- Tab width
vim.opt.shiftwidth = 2 -- Indent width
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.termguicolors = true -- True color support
vim.opt.signcolumn = "yes" -- Always show signcolumn
vim.opt.updatetime = 300 -- Faster update time
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.backup = false -- Don't create backup files
vim.opt.swapfile = false -- Don't create swap files
vim.opt.undofile = true -- Persistent undo
vim.opt.scrolloff = 8 -- Keep 8 lines visible when scrolling

-- Leader Key
vim.g.mapleader = "," -- Set leader key to space
vim.g.maplocalleader = "," -- Set local leader to space too

-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup("plugins")

-- Load key mappings
require("config.keymaps")
