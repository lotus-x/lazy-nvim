return {
  {
    "akinsho/bufferline.nvim",
    enabled = false,
    keys = {
      { "<leader>bg", "<Cmd>BufferLinePick<CR>", desc = "Pick Bufferline Buffer" },
    },
    opts = {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
    },
  },
}
