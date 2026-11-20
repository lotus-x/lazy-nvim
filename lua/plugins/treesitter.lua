return {
  {
    "nvim-treesitter/nvim-treesitter",
    init = function()
      vim.treesitter.language.register("starlark", "tiltfile")
    end,
    opts = {
      ensure_installed = { "graphql", "ledger", "starlark", "dart", "proto" },
    },
  },
}
