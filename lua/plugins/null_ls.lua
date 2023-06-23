return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
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

      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.formatting.stylua,
          nls.builtins.diagnostics.flake8,

          nls.builtins.formatting.prettier.with({
            extra_filetypes = { "gohtmltmpl" },
          }),

          nls.builtins.diagnostics.cspell,
          nls.builtins.code_actions.cspell,

          nls.builtins.diagnostics.golangci_lint,
          nls.builtins.diagnostics.staticcheck,
          nls.builtins.formatting.gofmt,
          nls.builtins.formatting.goimports,
          nls.builtins.formatting.goimports_reviser,
          nls.builtins.formatting.golines,

          nls.builtins.code_actions.eslint_d.with({
            condition = eslint_condition,
            prefer_local = "node_modules/.bin",
          }),
          nls.builtins.diagnostics.eslint_d.with({
            condition = eslint_condition,
            prefer_local = "node_modules/.bin",
          }),
          nls.builtins.code_actions.xo.with({
            condition = xo_condition,
            prefer_local = "node_modules/.bin",
          }),
          nls.builtins.diagnostics.xo.with({
            condition = xo_condition,
            prefer_local = "node_modules/.bin",
          }),

          nls.builtins.formatting.taplo,
        },
      }
    end,
    -- enabled = false,
  },
}
