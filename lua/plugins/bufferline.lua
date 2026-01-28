return {
  {
    "akinsho/bufferline.nvim",
    -- opts = {
    --   options = { mode = "tabs" },
    -- },
    opts = function(_, opts)
      opts.options.mode = "tabs"
      opts.highlights = require("rose-pine.plugins.bufferline")
    end,
  },
}
