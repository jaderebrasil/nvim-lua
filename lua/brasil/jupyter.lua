local Remap = require("brasil.utils.keymap")
local nnoremap = Remap.nnoremap
local xnoremap = Remap.xnoremap

-- jupyter_ascending
nnoremap("<LocalLeader>jr", ":call jupyter_ascending#execute()<CR>")
nnoremap("<LocalLeader>ja", ":call jupyter_ascending#execute_all()<CR>")

-- Magma
local opts = {noremap = true, silent = true}
nnoremap("<LocalLeader>mi", ":MagmaInit python3<CR>", opts)

nnoremap("<LocalLeader>mr", ":MagmaEvaluateLine<CR>", opts)
xnoremap("<LocalLeader>mr" , ":<C-u>MagmaEvaluateVisual<CR>", opts)

nnoremap("<LocalLeader>mc", ":MagmaReevaluateCell<CR>", opts)
xnoremap("<LocalLeader>mc" , ":<C-u>MagmaEvaluateVisual<CR>", opts)

nnoremap("<LocalLeader>md", ":MagmaDelete<CR>", opts)
nnoremap("<LocalLeader>ms", ":MagmaShowOutput<CR>", opts)
nnoremap("<LocalLeader>mo", ":MagmaEvaluateOperator<CR>", opts)

vim.g.magma_automatically_open_output = false
