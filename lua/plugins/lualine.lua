return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- local index = {}
      -- for k, v in pairs(opts.sections.lualine_c) do
      --   if v[1] ~= nil then
      --     index[v[1]] = k
      --   end
      -- end
      -- table.remove(opts.sections.lualine_c, index["aerial"])

      table.remove(opts.sections.lualine_c, 4)
      table.insert(opts.sections.lualine_c, 4, {
        LazyVim.lualine.pretty_path({ length = 10 }),
      })
      return opts
    end,
  },
}
