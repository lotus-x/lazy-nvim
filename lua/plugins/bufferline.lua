return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = { mode = "tabs" },
    },
    init = function()
      local bufline = require("catppuccin.groups.integrations.bufferline")
      function bufline.get()
        return bufline.get_theme()
      end
    end,
  },
}
