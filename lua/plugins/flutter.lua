return {
  {
    "nvim-flutter/flutter-tools.nvim",
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
        "<leader>cds",
        "<cmd>FlutterRun<cr>",
        desc = "Run the current project",
        remap = true,
      },
      {
        "<leader>cdr",
        "<cmd>FlutterRestart<cr>",
        desc = "Restart the current project",
        remap = true,
      },
      {
        "<leader>cdR",
        "<cmd>FlutterReload<cr>",
        desc = "Reload the running project",
        remap = true,
      },
      {
        "<leader>cde",
        "<cmd>FlutterEmulators<cr>",
        desc = "Shows a list of emulators to choose from",
        remap = true,
      },
      {
        "<leader>cdq",
        "<cmd>FlutterQuit<cr>",
        desc = "Ends a running session",
        remap = true,
      },
      {
        "<leader>cdl",
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
        "<leader>cdb",
        function()
          require("flutter-bloc").create_bloc()
        end,
        desc = "Create bloc",
        remap = true,
      },
      {
        "<leader>cdc",
        function()
          require("flutter-bloc").create_cubit()
        end,
        desc = "Create cubit",
        remap = true,
      },
    },
  },
}
