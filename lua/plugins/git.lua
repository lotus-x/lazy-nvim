return {
  -- { "akinsho/git-conflict.nvim", version = "*", config = true },
  -- { "ruifm/gitlinker.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = true },
  {
    "esmuellert/codediff.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    cmd = "CodeDiff",
    -- branch = "next",
    keys = {
      { "<leader>gvo", "<Cmd>CodeDiff<CR>", desc = "CodeDiff Open/Toggle" },
      { "<leader>gvh", "<Cmd>CodeDiff history<CR>", desc = "CodeDiff History" },
      { "<leader>gvc", "<Cmd>CodeDiff history %<CR>", desc = "CodeDiff Current File History" },
      { "<leader>gvc", ":CodeDiff history<CR>", mode = "x", desc = "CodeDiff Selection History" },
    },
    opts = {
      explorer = {
        view_mode = "tree",
      },
    },
  },
}
