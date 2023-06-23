return {
  {
    "nvim-pack/nvim-spectre",
    keys = function()
      local spectre = require("spectre")
      return {
        {
          "<leader>Ss",
          spectre.open,
          desc = "Spectre Open",
          remap = true,
        },
        {
          "<leader>Sw",
          function()
            spectre.open_visual({ select_word = true })
          end,
          desc = "Search current word",
          remap = true,
        },
        {
          "<leader>Sw",
          function()
            spectre.open_visual()
          end,
          desc = "Search current word",
          remap = true,
          mode = "v",
        },
        {
          "<leader>Sp",
          function()
            spectre.open_file_search({ select_word = true })
          end,
          desc = "Search on current file",
          remap = true,
        },
      }
    end,
    opts = {},
    lazy = true,
  }
}
