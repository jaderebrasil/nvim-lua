local Remap = require("brasil.utils.keymap")
local nnoremap = Remap.nnoremap
local xnoremap = Remap.xnoremap

-- TODO: jupyter_ascending bindings

-- Magma
local opts = {noremap = true, silent = true}
nnoremap("<LocalLeader>mi", ":MagmaInit python3<CR>", opts)
nnoremap("<LocalLeader>r" , ":MagmaEvaluateOperator<CR>", opts)
nnoremap("<LocalLeader>rr", ":MagmaEvaluateLine<CR>", opts)
nnoremap("<LocalLeader>rc", ":MagmaReevaluateCell<CR>", opts)
nnoremap("<LocalLeader>rd", ":MagmaDelete<CR>", opts)
nnoremap("<LocalLeader>ro", ":MagmaShowOutput<CR>", opts)
xnoremap("<LocalLeader>r" , ":<C-u>MagmaEvaluateVisual<CR>", opts)

vim.g.magma_automatically_open_output = false
