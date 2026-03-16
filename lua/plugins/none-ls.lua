return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
			},
		})

		local map = vim.keymap
		map.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
