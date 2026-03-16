local opt = vim.opt
opt.tabstop = 2
opt.shiftwidth = 2
opt.exrc = true
opt.secure = true
opt.number = true
opt.expandtab = true
opt.autoindent = true
opt.colorcolumn = { 80 }

-- automatic toggling between line number modes
local group = vim.api.nvim_create_augroup("NumberToggle", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "WinEnter" }, {
	group = group,
	callback = function()
		if vim.wo.number and vim.fn.mode() ~= "i" then
			vim.wo.relativenumber = true
		end
	end,
})
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "WinLeave" }, {
	group = group,
	callback = function()
		if vim.wo.number then
			vim.wo.relativenumber = false
		end
	end,
})

local function auto_reload_file_on_change(path)
	vim.api.nvim_create_autocmd("BufWritePost", {
		pattern = path,
		callback = function()
			package.loaded["init"] = nil
			dofile(path)
		end,
	})
end
auto_reload_file_on_change(vim.fn.stdpath("config") .. "/init.lua")
auto_reload_file_on_change(vim.fn.stdpath("config") .. "/lua/config/options.lua")

vim.cmd.colorscheme("catppuccin")
