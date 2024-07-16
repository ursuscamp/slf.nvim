local function log(fname)
	vim.ui.input({ prompt = "Log message" }, function(msg)
		local Job = require('plenary.job')
		local args = { 'log' }
		if fname then
			args = { '-f', fname, 'log' }
		end
		table.insert(args, msg)
		Job:new({
			command = 'slf',
			args = args
		}):start()
	end)
end

local function defaults()
	return {
		file = nil
	}
end

local function setup(opts)
	opts = opts or {}
	local o = defaults()
	o = vim.tbl_deep_extend('force', o, opts)
	vim.api.nvim_create_user_command('Slf', function()
		log(o.file)
	end, { desc = "Log a command" })
end

return { setup = setup }
