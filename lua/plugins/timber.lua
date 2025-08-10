return {
  "Goose97/timber.nvim",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("timber").setup({
      -- Configuration here, or leave empty to use defaults
    })
  end,
}
