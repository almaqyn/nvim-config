return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-mini/mini.icons",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")
    alpha.setup(dashboard.config)
  end,
}
