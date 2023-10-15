return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      enable_normal_mode_for_inputs = true,
      auto_clean_after_session_restore = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        buffers = {
          follow_current_file = {
            leave_dirs_open = true,
          },
        },
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
