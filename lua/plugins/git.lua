return {
  -- { "akinsho/git-conflict.nvim", version = "*", config = true },
  -- { "ruifm/gitlinker.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = true },
  {
    "sindrets/diffview.nvim",
    lazy = false,
    keys = {
      {
        "<leader>gdo",
        "<Cmd>DiffviewOpen<CR>",
        desc = "Diff View Open",
        remap = true,
      },
      {
        "<leader>gdh",
        "<Cmd>DiffviewFileHistory<CR>",
        desc = "Diff View File History",
        remap = true,
      },
      {
        "<leader>gdc",
        "<Cmd>DiffviewFileHistory %<CR>",
        desc = "Diff View Current File History",
        remap = true,
      },
      {
        "<leader>gdr",
        "<Cmd>DiffviewRefresh<CR>",
        desc = "Diff View Refresh",
        remap = true,
      },
    },
  },
  {
    "esmuellert/vscode-diff.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    cmd = "CodeDiff",
    branch = "next",
    opts = {
      explorer = {
        view_mode = "tree",
      },
    },
  },
}
