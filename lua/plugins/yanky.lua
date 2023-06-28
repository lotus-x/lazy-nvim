return {
  {
    "gbprod/yanky.nvim",
    opts = function(_, opts)
      opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, {
        telescope = {
          use_default_mappings = false,
          mappings = {
            default = require("yanky.telescope.mapping").set_register(require("yanky.utils").get_default_register()),
          },
        },
      })
    end,
  },
}
