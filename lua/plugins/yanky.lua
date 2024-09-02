return {
  {
    "gbprod/yanky.nvim",
    -- enabled = false,
    opts = function(_, opts)
      opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, {
        select = {
          action = require("yanky.picker").actions.set_register(require("yanky.utils").get_default_register()),
        },
      })
      -- opts.system_clipboard = vim.tbl_deep_extend("force", opts.system_clipboard or {}, {
      --   sync_with_ring = false,
      -- })
    end,
  },
}
