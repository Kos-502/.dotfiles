-- Set the leader key.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Sync the system clipboard with the nvim registors.
vim.o.clipboard = 'unnamedplus'

-- Enable line numbers.
vim.o.number = true

-- Configure the tab key behavior.
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Write to swap after specified amount of time.
vim.o.updatetime = 300

-- Declare whether to sign the column or not.
-- ("Yes" means "always.")
vim.o.signcolumn = 'yes'

-- Enable terminal gui colors.
vim.o.termguicolors = true
