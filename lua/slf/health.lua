local M = {}

M.check = function()
	vim.health.start("slf.nvim")
	if vim.fn.executable('slf') == 1 then
		vim.health.ok("slf command found")
	else
		vim.health.error("slf command not found")
	end
end

return M
