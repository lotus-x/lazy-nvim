return {
  {
    "stevearc/aerial.nvim",
    opts = {
      autojump = true,
      link_tree_to_folds = false,
      close_on_select = true,
      close_automatic_events = { "unfocus", "switch_buffer" },
    },
    keys = {
      {
        "<leader>o",
        "<Cmd>AerialToggle<CR>",
        desc = "Aerial Toggle",
        remap = true,
      },
    },
  },
}
