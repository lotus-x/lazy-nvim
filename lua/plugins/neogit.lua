return {
  "NeogitOrg/neogit",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",

    "esmuellert/codediff.nvim",

    "m00qek/baleia.nvim",

    "folke/snacks.nvim",
  },
  cmd = "Neogit",
  keys = {
    { "<leader>gn", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
  },
}
