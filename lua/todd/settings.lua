local global = vim.g
local opt = vim.opt

global.mapleader = "\\"
global.maplocalleader = "\\"

opt.number = true
opt.relativenumber = true
opt.syntax = "on"
opt.autoindent = true
opt.cursorline = false -- TODO: performance oddity
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.encoding = "UTF-8"
opt.ruler = true
opt.mouse = "a"
opt.title = true
opt.wildmenu = true
opt.showcmd = true
opt.showmatch = true
opt.splitright = true
opt.splitbelow = true
opt.termguicolors = true
opt.wrap = false
opt.conceallevel = 2
opt.guifont = { "Source Code Pro", "h12" }
