return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        {
          mode = { "n", "v" },
          { "<leader>F", group = "flutter" },
          { "<leader>gv", group = "codediff" },
        },
      },
    },
  },
}
