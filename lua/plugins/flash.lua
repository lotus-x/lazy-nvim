return {
  {
    "folke/flash.nvim",
    ---@type Flash.Config
    opts = {
      -- modes = {
      -- char = {
      --   multi_line = false,
      -- },
      -- },
    },
    keys = {
      {
        "<c-space>",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter({
            actions = {
              ["<c-space>"] = "next",
              ["<BS>"] = "prev",
            },
            labels = "",
            -- label = { before = false, after = false },
          })
        end,
        desc = "Treesitter Incremental Selection",
      },
    },
  },
}
