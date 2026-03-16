return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
  end,
}
