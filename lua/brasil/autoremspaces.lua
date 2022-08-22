-- Automatically deletes all trailing whitespace and newlines at end of file on save.
vim.api.nvim_command([[
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e
]])
