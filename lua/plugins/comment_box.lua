return {
  {
    "LudoPinelli/comment-box.nvim",
    keys = {
      {
        "<leader>cc",
        "<Cmd>lua require('comment-box').ccbox(3)<CR>",
        desc = "Create comment box from text",
        remap = true,
      },
      {
        "<leader>cc",
        "<Cmd>lua require('comment-box').ccbox(3)<CR>",
        desc = "Create comment box from text",
        mode = "v",
        remap = true,
      },
      {
        "<leader>cl",
        "<Cmd>lua require('comment-box').cline(2)<CR>",
        desc = "Create comment line",
        remap = true,
      },
    },
  },
}
