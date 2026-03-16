return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		require("nvim-treesitter").install({
			"c",
			"cpp",
			"lua",
			"rust",
			"vimdoc",
			"markdown",
		})
	end,
}
