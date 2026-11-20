return {
  {
    "uga-rosa/ccc.nvim",
    keys = {
      {
        "<leader>cp",
        "<Cmd>CccPick<CR>",
        desc = "Color Picker",
        mode = { "v", "n" },
      },
    },
    opts = function()
      local ccc = require("ccc")
      local flutterHex = require("utils.flutter-hex")

      return {
        highlighter = {
          auto_enable = false,
          lsp = true,
        },
        outputs = {
          ccc.output.hex,
          ccc.output.hex_short,
          ccc.output.css_rgb,
          ccc.output.css_hsl,
          flutterHex,
        },
      }
    end,
  },
}
