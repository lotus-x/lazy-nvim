return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      -- auto_clean_after_session_restore = true,
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
      -- default_component_configs = {
      --   git_status = {
      --     symbols = {
      --       unstaged = "󰓪",
      --     },
      --   },
      --   diagnostics = {
      --     symbols = {
      --       hint = "",
      --       info = "",
      --       warn = "",
      --       error = "",
      --     },
      --   },
      -- },
      event_handlers = {
        {
          event = "neo_tree_popup_input_ready",
          ---@param args { bufnr: integer, winid: integer }
          handler = function(args)
            vim.cmd("stopinsert")
            vim.keymap.set("i", "<esc>", vim.cmd.stopinsert, { noremap = true, buffer = args.bufnr })
          end,
        },
      },
    },
    -- keys = {
    --   { "<leader>e", "<cmd>Neotree<CR>", desc = "Explorer NeoTree (root dir)", remap = true },
    --   { "<leader>E", "<cmd>Neotree reveal<CR>", desc = "NeoTree focus current directory", remap = true },
    -- },
  },
}
