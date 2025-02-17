-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Sync system clipboard with nvim registors
vim.o.clipboard = 'unnamedplus'

-- Line numbers
vim.o.number = true

-- Tabstop
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Write to swap after specified amount of time
vim.o.updatetime = 300

-- Whether to sign the column or not
-- 'yes' = always
vim.o.signcolumn = 'yes'

-- Terminal gui colors
vim.o.termguicolors = true
