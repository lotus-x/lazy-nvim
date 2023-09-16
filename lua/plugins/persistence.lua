return {
  {
    "folke/persistence.nvim",
    enabled = false,
    opts = {
      options = {
        "buffers",
        "curdir",
        "tabpages",
        "winsize",
        "help",
        "globals",
        "skiprtp",
        "folds",
        "terminal",
      },
      pre_save = function()
        vim.cmd("Neotree close")
      end,
    },
  },
}
