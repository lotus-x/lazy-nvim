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
    keys = {
      { "<leader>css", "<cmd>AerialToggle<cr>", desc = "Aerial Sidebar (Symbols)" },
      {
        "<leader>csf",
        function()
          require("aerial").snacks_picker()
        end,
        desc = "Aerial Finder (Symbols)",
      },
    },
  },
}
