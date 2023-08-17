return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")

      vim.list_extend(opts.sources, {
        nls.builtins.formatting.prettier.with({
          extra_filetypes = { "gohtmltmpl" },
        }),

        nls.builtins.diagnostics.cspell,
        nls.builtins.code_actions.cspell,

        nls.builtins.formatting.goimports,
        nls.builtins.formatting.golines,

        nls.builtins.formatting.taplo,

        nls.builtins.formatting.black,

        nls.builtins.formatting.phpcsfixer,
        -- nls.builtins.diagnostics.phpcs,
        nls.builtins.formatting.blade_formatter,
      })
    end,
  },
}
