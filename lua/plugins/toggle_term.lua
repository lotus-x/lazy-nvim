return {
  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm", "TermExec" },
    keys = {
      { [[<c-\>]], desc = "Toggle Terminal" },
    },
    opts = {
      open_mapping = [[<c-\>]],
      shade_terminals = false,
    },
  },
}
