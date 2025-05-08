return {
  {
    "MagicDuck/grug-far.nvim",
    keys = {
      {
        "<leader>sf",
        function()
          require("grug-far").grug_far({ prefills = { paths = vim.fn.expand("%") } })
        end,
        desc = "Search and replace current word",
        remap = true,
        mode = { "v", "n" },
      },
    },
    opts = {
      startInInsertMode = false,
    },
  },
}
