return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function(_, opts)
      local luasnip = require("luasnip")

      luasnip.setup(opts)

      require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets/vscode" } })
    end,
  },
}
