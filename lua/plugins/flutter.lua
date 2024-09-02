return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    opts = {
      debugger = {
        enabled = true,
        run_via_dap = true,
      },
      dev_log = {
        enabled = false,
      },
    },
    keys = {
      {
        "<leader>Sfs",
        "<cmd>FlutterRun<cr>",
        desc = "Run the current project",
        remap = true,
      },
      {
        "<leader>Sfr",
        "<cmd>FlutterRestart<cr>",
        desc = "Restart the current project",
        remap = true,
      },
      {
        "<leader>SfR",
        "<cmd>FlutterReload<cr>",
        desc = "Reload the running project",
        remap = true,
      },
      {
        "<leader>Sfe",
        "<cmd>FlutterEmulators<cr>",
        desc = "Shows a list of emulators to choose from",
        remap = true,
      },
      {
        "<leader>Sfq",
        "<cmd>FlutterQuit<cr>",
        desc = "Ends a running session",
        remap = true,
      },
      {
        "<leader>Sfl",
        "<cmd>FlutterLspRestart<cr>",
        desc = "Restarts the dart language server",
        remap = true,
      },
    },
  },
  {
    "wa11breaker/flutter-bloc.nvim",
    enabled = false,
    lazy = true,
    keys = {
      {
        "<leader>Sfb",
        function()
          require("flutter-bloc").create_bloc()
        end,
        desc = "Create bloc",
        remap = true,
      },
      {
        "<leader>Sfc",
        function()
          require("flutter-bloc").create_cubit()
        end,
        desc = "Create cubit",
        remap = true,
      },
    },
  },
}
