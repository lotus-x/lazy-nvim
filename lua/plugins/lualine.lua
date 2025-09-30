return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_c[4] = { LazyVim.lualine.pretty_path({
        length = 10,
      }) }
      return opts
    end,
  },
}
