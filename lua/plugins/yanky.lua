return {
  {
    "gbprod/yanky.nvim",
    opts = function(_, opts)
      opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, {
        select = {
          action = require("yanky.picker").actions.set_register(require("yanky.utils").get_default_register()),
        },
      })
    end,
  },
}
