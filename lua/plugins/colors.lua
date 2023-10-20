return {
  {
    "uga-rosa/ccc.nvim",
    lazy = false,
    keys = {
      {
        "<leader>cP",
        "<Cmd>CccPick<CR>",
        desc = "Color Picker",
        remap = true,
      },
    },
    opts = {
      -- preserve = true,
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    },
  },
}
