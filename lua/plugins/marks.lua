return {
  {
    "chentoast/marks.nvim",
    config = true,
    lazy = false,
    keys = {
      {
        "<leader>mm",
        "<Cmd>MarksListAll<CR>",
        desc = "List All Marks",
        remap = true,
      },
      {
        "<leader>mb",
        "<Cmd>MarksListBuf<CR>",
        desc = "List All Marks In the Buf",
        remap = true,
      },
      {
        "<leader>mb",
        "<Cmd>BookmarksListAll<CR>",
        desc = "List All Bookmarks",
        remap = true,
      },
      {
        "<leader>ms",
        "<Cmd>MarksToggleSigns<CR>",
        desc = "Toggle Mark Signs",
        remap = true,
      },
    },
  },
}
