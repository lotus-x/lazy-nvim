return {
  {
    "stevearc/aerial.nvim",
    opts = {
      autojump = true,
      link_tree_to_folds = false,
      close_on_select = true,
      close_automatic_events = { "unfocus", "switch_buffer" },
      layout = {
        max_width = { 200, 0.5 },
      },
    },
    -- <leader>cs (Aerial sidebar toggle) comes from the LazyVim aerial extra
    keys = {
      {
        "<leader>sA",
        function()
          require("aerial").snacks_picker()
        end,
        desc = "Aerial Symbols (Finder)",
      },
    },
  },
}
