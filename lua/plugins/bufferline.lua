return {
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      opts.options.mode = "tabs"
      opts.highlights = require("catppuccin.special.bufferline").get_theme()
    end,
  },
}
