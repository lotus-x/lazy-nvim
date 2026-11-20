return {
  {
    "MagicDuck/grug-far.nvim",
    keys = {
      {
        "<leader>sf",
        function()
          require("grug-far").open({ prefills = { paths = vim.fn.expand("%") } })
        end,
        desc = "Search and Replace in Current File",
      },
      {
        "<leader>sf",
        function()
          require("grug-far").with_visual_selection({ prefills = { paths = vim.fn.expand("%") } })
        end,
        mode = "x",
        desc = "Search and Replace Selection in Current File",
      },
    },
    opts = {
      startInInsertMode = false,
    },
  },
}
