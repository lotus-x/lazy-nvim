return {
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      backends = { "lsp", "treesitter", "markdown", "man" },
      filter_kind = false,
      show_guides = true,
    },
    keys = {
      {
        "<leader>o",
        "<Cmd>AerialToggle!<CR>",
        desc = "Aerial Toggle",
        remap = true,
      },
    },
  },
}
