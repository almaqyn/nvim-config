return {
	"mason-org/mason-lspconfig.nvim",

	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{ "neovim/nvim-lspconfig" },
	},

	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"clangd",
				"lua_ls",
				"stylua",
				"rust_analyzer",
			},
		})

		local buf = vim.lsp.buf
		local map = vim.keymap
		map.set("n", "K", buf.hover, {})
		map.set("n", "gd", buf.definition, {})
		map.set({ "n", "v" }, "<leader>ca", buf.code_action, {})
	end,
}
