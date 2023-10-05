return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["gohtmltmpl"] = { { "prettierd", "prettier" } },
        go = { "goimports", "golines" },
        toml = { "taplo" },
        python = { "black" },
        php = { "php_cs_fixer" },
      },
    },
  },
}