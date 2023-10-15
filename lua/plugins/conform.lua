return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["gohtmltmpl"] = { { "prettierd", "prettier" } },
        go = { "golines" },
        toml = { "taplo" },
        php = { "blade-formatter", "php_cs_fixer" },
      },
    },
  },
}
