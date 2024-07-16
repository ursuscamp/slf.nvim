vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
	pattern = '*.slf',
	callback = function(_)
		vim.bo.filetype = 'slf'
	end
})

vim.api.nvim_create_autocmd({ 'FocusGained', 'BufWinEnter', 'CursorHold' }, {
	pattern = "*.slf",
	command = 'checktime'
})
