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
      },
      formatters = {
        golines = {
          args = { "--max-len=80", "--base-formatter=gofumpt" },
        },
      },
    },
  },
}
