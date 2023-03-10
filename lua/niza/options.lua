vim.opt.guicursor = ""

vim.opt.spelllang = "en_us"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 250

vim.opt.colorcolumn = "80"

vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.netrw_keepdir = 0

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.TerminusFocusReporting = 0
