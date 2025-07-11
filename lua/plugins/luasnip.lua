return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      local luasnip = require("luasnip")

      -- luasnip.setup(opts)
      -- require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })

      luasnip.filetype_extend("typescript", { "javascript" })
      luasnip.filetype_extend("typescriptreact", { "javascriptreact" })
    end,
    keys = {
      {
        "<C-L>",
        function()
          local luasnip = require("luasnip")

          if luasnip.expandable() then
            luasnip.expand()
          end
        end,
        mode = "i",
      },
    },
  },
}
