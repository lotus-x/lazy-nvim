return {
  {
    "folke/which-key.nvim",
    -- init = function()
    --   local presets = require("which-key.plugins.presets")
    --   presets.operators["v"] = nil
    -- end,
    opts = {
      -- plugins = {
      --   presets = {
      --     v = false,
      --   },
      -- },
      spec = {
        {
          mode = { "n", "v" },
          { "<leader>F", group = "flutter" },
        },
      },
    },
  },
}
