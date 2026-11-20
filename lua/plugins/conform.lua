return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["gohtmltmpl"] = { "prettierd", "prettier", stop_after_first = true },
        -- golines runs gofumpt as its base formatter; goimports keeps imports in sync
        go = { "goimports", "golines" },
        toml = { "taplo" },
        blade = { "blade-formatter" },
        proto = { "buf" },
        tex = { "tex-fmt" },
        bib = { "tex-fmt" },
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
