return {
  "folke/tokyonight.nvim",
  enabled = false,
  priority = 1000,
  init = function()
    -- vim.o.background = "light"
  end,
  opts = {
    style = "day", -- Set the theme's style to day
    light_style = "day",
  },
}
