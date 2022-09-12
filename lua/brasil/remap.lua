require('brasil.utils.reload')
local nnoremap = require("brasil.utils.keymap").nnoremap
local vnoremap = require('brasil.utils.keymap').vnoremap
local xnoremap = require("brasil.utils.keymap").xnoremap

nnoremap("<leader>pv", ":Ex<CR>")

-- Source source and open
nnoremap("<leader>ss", ":lua ReloadConfig()<CR>")
nnoremap("<leader>so", ":e $MYVIMRC<CR>")

-- Tabs
-- Go to tab by number
nnoremap("<leader>1", "1gt")
nnoremap("<leader>2", "2gt")
nnoremap("<leader>3", "3gt")
nnoremap("<leader>4", "4gt")
nnoremap("<leader>5", "5gt")
nnoremap("<leader>6", "6gt")
nnoremap("<leader>7", "7gt")
nnoremap("<leader>8", "8gt")
nnoremap("<leader>9", "9gt")
nnoremap("<leader>0", ":tablast<cr>")

-- Shortcutting split navigation, saving a keypress:
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Set working directory
nnoremap("<leader>.", ":lcd %:p:h<CR>")
nnoremap("<leader>e", ':e <C-R>=expand("%:p:h") . "\" <CR>')
nnoremap("<leader>te", ':tabnew <C-R>=expand("%:p:h") . "\" <CR>')

-- Lang specific
nnoremap("<LocalLeader>jf", ":JuliaFormatterFormat<CR>")
vnoremap("<LocalLeader>jf", ":JuliaFormatterFormat<CR>")

-- delete to record _ (means it's gone)
-- this means, when we select (v/vi) and paste with <leader>p
-- everything we select is permanently deleted and the record
-- still has the same thing before pasting into it.
xnoremap("<leader>p", "\"_dP")
