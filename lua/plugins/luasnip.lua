return {
  {
    "L3MON4D3/LuaSnip",
    config = function(_, opts)
      local luasnip = require("luasnip")
      luasnip.setup(opts)

      luasnip.filetype_extend("typescript", { "javascript" })
      luasnip.filetype_extend("typescriptreact", { "javascriptreact" })
    end,
    keys = {
      {
        "<C-S-L>",
        function()
          local luasnip = require("luasnip")

          if luasnip.expandable() then
            luasnip.expand()
          end
        end,
        mode = "i",
        desc = "Expand Snippet",
      },
    },
  },
}
