vim.o.clipboard = "unnamedplus"
vim.o.mouse = "a"
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.termguicolors = true
vim.opt.errorbells = false

-- encoding
vim.o.encoding = "utf-8"
vim.o.ff = "unix"

-- number
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab & indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- vimtex stuff
vim.g.vimtex_view_general_viewer = 'SumatraPDF'
vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'

-- python stuff
vim.g.autopep8_on_save = 1
vim.g.autopep8_diff_type = 'vertical'
vim.g.autopep8_disable_show_diff = 1
