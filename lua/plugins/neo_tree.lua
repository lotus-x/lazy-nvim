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
        git_status = {
          symbols = {
            unstaged = "󰓪",
          },
        },
        diagnostics = {
          symbols = {
            hint = "",
            info = "",
            warn = "",
            error = "",
          },
        },
      },
    },
    keys = {
      { "<leader>e", "<cmd>Neotree<CR>", desc = "Explorer NeoTree (root dir)", remap = true },
      { "<leader>E", "<cmd>Neotree reveal<CR>", desc = "NeoTree focus current directory", remap = true },
    },
  },
}
