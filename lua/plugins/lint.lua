return {
  {
    "mfussenegger/nvim-lint",
    config = function()
      require("lint").linters_by_ft = {
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        vue = { "eslint_d" },
      }

      local cspell = require("lint").linters.cspell
      cspell.parser = require("lint.parser").from_errorformat("%f:%l:%c - %m", {
        source = "cspell",
        severity = vim.diagnostic.severity.INFO,
      })

      vim.api.nvim_create_autocmd({ "InsertLeave", "BufEnter", "BufLeave", "BufWritePost" }, {
        callback = function()
          local lint = require("lint")

          local linters = lint.linters_by_ft[vim.bo.filetype]
          if not linters then
            linters = {}
            lint.linters_by_ft[vim.bo.filetype] = linters
          end
          if not vim.tbl_contains(linters, "cspell") then
            table.insert(linters, "cspell")
          end

          lint.try_lint()
        end,
      })
    end,
  },
}
