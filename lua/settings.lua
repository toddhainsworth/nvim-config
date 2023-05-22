HOME = os.getenv('HOME')

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = '\\'

vim.o.guifont = 'Anonymice Nerd Font'
vim.o.encoding = 'utf-8'
vim.o.backspace = 'indent,eol,start'
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.termguicolors = true
vim.o.completeopt = 'menu,preview,menuone'

vim.cmd('colorscheme minimalist')
