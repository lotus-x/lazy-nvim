return {
  {
    "stevearc/conform.nvim",
    -- opts = function(_, opts)
    --   opts.formatters_by_ft.go = opts.formatters_by_ft.go or {}
    --   vim.list_extend(opts.formatters_by_ft.go, { "golines", "ray-x-go" })
    -- end,
    opts = {
      formatters_by_ft = {
        ["gohtmltmpl"] = { "prettierd", "prettier" },
        go = { "golines" },
        toml = { "taplo" },
        php = { "blade-formatter", "php_cs_fixer" },
        proto = { "buf" },
        tex = { "tex-fmt" },
        cls = { "tex-fmt" },
        bib = { "tex-fmt" },
        sty = { "tex-fmt" },
      },
      formatters = {
        golines = {
          args = { "--max-len=80", "--base-formatter=gofumpt" },
        },
        oxfmt = {
          condition = function(_, ctx)
            -- Check if an oxfmt config file exists in the current project root
            local root = vim.fs.root(ctx.buf, { ".oxfmtrc.json", ".oxfmtrc.jsonc", "oxfmt.config.ts" })
            return root ~= nil
          end,
        },
      },
    },
  },
}
