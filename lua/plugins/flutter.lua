return {
  {
    "nvim-flutter/flutter-tools.nvim",
    ft = "dart",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      debugger = {
        enabled = true,
        run_via_dap = true,
      },
      dev_log = {
        enabled = false,
      },
      fvm = true,
    },
    keys = {
      { "<leader>Fs", "<cmd>FlutterRun<cr>", desc = "Run the current project" },
      { "<leader>Fr", "<cmd>FlutterRestart<cr>", desc = "Restart the current project" },
      { "<leader>FR", "<cmd>FlutterReload<cr>", desc = "Reload the running project" },
      { "<leader>Fe", "<cmd>FlutterEmulators<cr>", desc = "Shows a list of emulators to choose from" },
      { "<leader>Fq", "<cmd>FlutterQuit<cr>", desc = "Ends a running session" },
      { "<leader>Fl", "<cmd>FlutterLspRestart<cr>", desc = "Restarts the dart language server" },
    },
  },
}
