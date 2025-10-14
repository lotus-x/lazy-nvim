return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- remove gitcommit because it causes too much cpu usage
      opts.ensure_installed = vim.tbl_filter(function(parser)
        return not vim.tbl_contains({ "gitcommit" }, parser)
      end, opts.ensure_installed)
      --  add hledger support
      vim.list_extend(opts.ensure_installed, {
        "ledger",
      })
    end,
  },
}
