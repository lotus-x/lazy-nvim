return {
  {
    "stevearc/conform.nvim",
    -- opts = function(_, opts)
    --   opts.formatters_by_ft.go = opts.formatters_by_ft.go or {}
    --   vim.list_extend(opts.formatters_by_ft.go, { "golines", "ray-x-go" })
    -- end,
    opts = {
      formatters_by_ft = {
        ledger = { "hledger-fmt" },
      },
      formatters = {
        ["hledger-fmt"] = {
          args = { "-", "--no-diff", "--exit-zero-on-changes" },
        },
      },
    },
  },
}
