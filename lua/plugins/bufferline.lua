return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bg", "<Cmd>BufferLinePick<CR>", desc = "Pick Bufferline Buffer" },
    },
    opts = {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
    },
  },
}
