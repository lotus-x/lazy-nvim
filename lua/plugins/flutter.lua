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
        "<leader>Fs",
        "<cmd>FlutterRun<cr>",
        desc = "Run the current project",
        remap = true,
      },
      {
        "<leader>Fr",
        "<cmd>FlutterRestart<cr>",
        desc = "Restart the current project",
        remap = true,
      },
      {
        "<leader>FR",
        "<cmd>FlutterReload<cr>",
        desc = "Reload the running project",
        remap = true,
      },
      {
        "<leader>Fe",
        "<cmd>FlutterEmulators<cr>",
        desc = "Shows a list of emulators to choose from",
        remap = true,
      },
      {
        "<leader>Fq",
        "<cmd>FlutterQuit<cr>",
        desc = "Ends a running session",
        remap = true,
      },
      {
        "<leader>Fl",
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
        "<leader>Fb",
        function()
          require("flutter-bloc").create_bloc()
        end,
        desc = "Create bloc",
        remap = true,
      },
      {
        "<leader>Fc",
        function()
          require("flutter-bloc").create_cubit()
        end,
        desc = "Create cubit",
        remap = true,
      },
    },
  },
}
