return {
  {
    "nvimtools/none-ls.nvim",
    opts = function()
      local nls = require("null-ls")

      return {
        sources = {
          nls.builtins.diagnostics.cspell,
          nls.builtins.code_actions.cspell,

          nls.builtins.code_actions.gomodifytags,
          nls.builtins.code_actions.impl,
        },
      }
    end,
  },
}
