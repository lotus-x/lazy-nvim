return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")

      local eslint_condition = function(utils)
        return utils.root_has_file({
          ".eslintrc.js",
          ".eslintrc.cjs",
          ".eslintrc.yaml",
          ".eslintrc.yml",
          ".eslintrc.json",
        })
      end
      local xo_condition = function(utils)
        return utils.root_has_file({
          ".xo-config",
          ".xo-config.json",
          ".xo-config.js",
          "xo.config.js",
          ".xo-config.cjs",
          "xo-config.cjs",
        })
      end

      opts.sources = {
        nls.builtins.code_actions.cspell,

        nls.builtins.code_actions.eslint_d.with({
          condition = eslint_condition,
          prefer_local = "node_modules/.bin",
        }),
        nls.builtins.code_actions.xo.with({
          condition = xo_condition,
          prefer_local = "node_modules/.bin",
        }),
      }
    end,
  },
}
