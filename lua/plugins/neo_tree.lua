return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = true,
        use_libuv_file_watcher = true,
      },
      default_component_configs = {
        indent = {
          with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
      },
    },
    keys = {
      { "<leader>e", "<cmd>Neotree<CR>",        desc = "Explorer NeoTree (root dir)",      remap = true },
      { "<leader>E", "<cmd>Neotree reveal<CR>", desc = "NeoTreee focus current directory", remap = true },
    },
  },
}
