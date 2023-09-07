return {
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  { "ruifm/gitlinker.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = true },
  {
    "sindrets/diffview.nvim",
    keys = {
      {
        "<leader>gd",
        "<Cmd>DiffviewFileHistory<CR>",
        desc = "Diff View File History",
        remap = true,
      },
      {
        "<leader>gD",
        "<Cmd>DiffviewFileHistory %<CR>",
        desc = "Diff View Current File History",
        remap = true,
      },
    },
  },
}
